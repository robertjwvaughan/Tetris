public class Shapes extends Square
{
  /*
    Constructor that passes values to the classes super
    constructor
  */
  Shapes(float sDimension)
  {
    super(sDimension);
  }
  
  /*
    Constructor that passes values to the classes super
    constructor
  */
  Shapes(float sDimension, float x, float y)
  {
    super(sDimension, x, y);
    //System.out.println(sDimension);
    //shape(square, 0, 0);
  }
  
  /*
    Method to draw a shape when a certain index in passed
  */
  void indexCall(int index)
  {
    switch(index)
    {
      case 0:
      {
        shapeS();
        break;
      }//end CASE
      case 1:
      {
        shapeJ();
        break;
      }//end CASE
      case 2:
      {
        shapeI();
        break;
      }//end CASE
      case 3:
      {
        shapeZ();
        break;
      }//end CASE
      case 4:
      {
        shapeL();
        break;
      }//end CASE
      case 5:
      {
        shapeT();
        break;
      }//end CASE
      case 6:
      {
        shapeO();
        break;
      }//end CASE
    }//end switch
  }//end indexCall()
  
  /*
    Method that draws the I shape by adding square objects to an array list
  */
  void shapeI()
  {
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
    liveShape.add(new Square(measure, 6, 0));
  }//end METHOD I
  
  /*
    Method that draws the S shape by adding square objects to an array list
  */
  void shapeS()
  {
    liveShape.add(new Square(measure, 3, 1));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
  }
  
  /*
    Method that draws the J shape by adding square objects to an array list
  */
  void shapeJ()
  {
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
    liveShape.add(new Square(measure, 5, 1));
  }
  
  /*
    Method that draws the Z shape by adding square objects to an array list
  */
  void shapeZ()
  {
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 5, 1));
  }
  
  /*
    Method that draws the L shape by adding square objects to an array list
  */
  void shapeL()
  {
    liveShape.add(new Square(measure, 3, 1));
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
  }
  
  /*
    Method that draws the T shape by adding square objects to an array list
  */
  void shapeT()
  {
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 5, 0));    
  }
  
  /*
    Method that draws the O shape by adding square objects to an array list
  */
  void shapeO()
  {
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 5, 0));
    liveShape.add(new Square(measure, 5, 1));
  }
  
  /*
    Method that rotates the current active shape with use of a switch
    statement to index the correct shape rotation
  */
  void rotateShape()
  {
    switch(gameStatus.getShapeIndex())
    {
      case 0:
      {
        rotateS();
      }//end CASE
      case 1:
      {
        rotateJ();
      }//end CASE
      case 2:
      {
        rotateI();
      }//end CASE
      case 3:
      {
        rotatesZ();
      }//end CASE
      case 4:
      {
        rotateL();
      }//end CASE
      case 5:
      {
        rotateT();
      }//end CASE
      case 6:
      {
        rotateO();
      }//end CASE
    }//end switch
  }//end rotate
  
  /*
    Method that will rotate shape I by changing each squares PVectors co-ordinates
  */
  void rotateI()
  {
    if(liveShape.get(0).xy.x == liveShape.get(1).xy.x - liveShape.get(1).getLength())
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure * 2.0f;
      liveShape.get(3).xy.y += measure * 2.0f;
    }
    else
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure * 2.0f;
      liveShape.get(3).xy.y -= measure * 2.0f;
    }
  }
  
  /*
    Method that will rotate shape S by changing each squares PVectors co-ordinates
  */
  void rotateS()
  {
    
  }
  
  /*
    Method that will rotate shape J by changing each squares PVectors co-ordinates
  */
  void rotateJ()
  {
    
  }
  
  /*
    Method that will rotate shape Z by changing each squares PVectors co-ordinates
  */
  void rotatesZ()
  {
    
  }
  
  /*
    Method that will rotate shape L by changing each squares PVectors co-ordinates
  */
  void rotateL()
  {
    
  }
  
  /*
    Method that will rotate shape T by changing each squares PVectors co-ordinates
  */
  void rotateT()
  {
    
  }
  
  /*
    Method that will rotate shape O by changing each squares PVectors co-ordinates
  */
  void rotateO()
  {
    
  }
}