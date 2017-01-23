public class Square
{
  PShape square;
  PVector xy;
  float x;
  float y;
  float measure;
  
  Square(float lengths)
  {
    //float half = lengths / 2.0f;
    
    measure = lengths;
    
    square = createShape();
    square.beginShape();
    
    square.vertex(0.0f, 0.0f);
    square.vertex(0.0f, lengths);
    square.vertex(0.0f, lengths);
    square.vertex(lengths, lengths);
    square.vertex(lengths, 0.0f);
    
    square.endShape(CLOSE);
    
    x = 0.0f;
    y = 0.0f;
    
    xy = new PVector(x, y);
  }//end CONSTRUCTOR
  
  void drawSquare()
  {
    shape(square, xy.x, xy.y);
  }//end drawSquare()
  
  void down()
  {
    PVector down = new PVector(0.0f, measure);
    xy.add(down);
  }
}//end CLASS Square