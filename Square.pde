public class Square
{
  PShape square;
  PVector xy;
  float x;
  float y;
  float measure;
  boolean center;
  ArrayList<Square> connect = new ArrayList<Square>();
  char pos;
  
  //Constructor that passes the length of the square
  Square(float lengths)
  {
    measure = lengths;
  }

  /*
    Constructor that passes the length of the square and PVector
    co-ordinates
  */
  Square(float lengths, float x, float y, color col, char loc)
  {
    //float half = lengths / 2.0f;
    center = false;
    measure = lengths;
    pos = '0';
    
    fill(col);
    
    //Beginning to draw the square PShape
    square = createShape();
    square.beginShape();
    
    square.vertex(0.0f, 0.0f);
    square.vertex(0.0f, lengths);
    square.vertex(0.0f, lengths);
    square.vertex(lengths, lengths);
    square.vertex(lengths, 0.0f);
    
    square.endShape(CLOSE);
    
    //PVector recorded
    this.x = cells[(int)y][(int)x].ordinates.x;
    this.y = cells[(int)y][(int)x].ordinates.y;
    
    xy = new PVector(this.x, this.y);
    
    if (loc == 'C')
    {
      this.center = true;
    }//end if
    
    this.pos = loc;
  }//end CONSTRUCTOR
  
  //Accessor method to get length
  float getLength()
  {
    return measure;
  }//end VOID getLength()
  
  //Method that draws a square
  void drawSquare()
  {
    shape(square, xy.x, xy.y);
  }//end drawSquare()
  
  //Method that adds values to the y of a PVector
  void down()
  {
    PVector down = new PVector(0.0f, measure);
    xy.add(down);
  }
  
  //Method that subtracts values from the x of a PVector
  void left()
  {
    PVector left = new PVector(measure, 0.0f);
    xy.sub(left);
  }
  
  //Method that adds values to the x of a PVector
  void right()
  {
    PVector right = new PVector(measure, 0.0f);
    xy.add(right);
  }
  
  //Method that checks a square has not crossed the girds boundary
  boolean boundaryCheck(char type)
  {
    switch(type)
    {
      case 'l':
      {
        if (this.xy.x <= 0)
        {
          return false;
        }//end if
        else
        {
          return true;
        }//end else
      }//end CASE left
      case 'r':
      {
        if (this.xy.x >= measure * 9)
        {
          return false;
        }//end if
        else
        {
          return true;
        }//end else
      }//end CASE 
      case 'd':
      {
        if (this.xy.y + measure >= measure * 17)
        {
          //changeScreen = 0;
          return false;
        }//end if
        else
        {
          return true;
        }//end else
      }//end CASE left
      default:
      {
        return true;
      }
    }//end swtich
  }//end METHOD boundaryCheck
}//end CLASS Square