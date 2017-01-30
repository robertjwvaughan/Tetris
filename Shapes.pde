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
  Shapes(float sDimension, float x, float y, color col)
  {
    super(sDimension, x, y, col);
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
    liveShape.add(new Square(measure, 3, 0, #FF6600));
    liveShape.add(new Square(measure, 4, 0, #FF6600));
    liveShape.add(new Square(measure, 5, 0, #FF6600));
    liveShape.add(new Square(measure, 6, 0, #FF6600));
    
    checkRotate = 0;
  }//end METHOD I
  
  /*
    Method that draws the S shape by adding square objects to an array list
  */
  void shapeS()
  {
    liveShape.add(new Square(measure, 4, 0, #66CCFF));
    liveShape.add(new Square(measure, 5, 0, #66CCFF));
    liveShape.add(new Square(measure, 3, 1, #66CCFF));
    liveShape.add(new Square(measure, 4, 1, #66CCFF));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the J shape by adding square objects to an array list
  */
  void shapeJ()
  {
    liveShape.add(new Square(measure, 3, 0, #CC00FF));
    liveShape.add(new Square(measure, 4, 0, #CC00FF));
    liveShape.add(new Square(measure, 5, 0, #CC00FF));
    liveShape.add(new Square(measure, 5, 1, #CC00FF));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the Z shape by adding square objects to an array list
  */
  void shapeZ()
  {
    liveShape.add(new Square(measure, 3, 0, #00FF00));
    liveShape.add(new Square(measure, 4, 0, #00FF00));
    liveShape.add(new Square(measure, 4, 1, #00FF00));
    liveShape.add(new Square(measure, 5, 1, #00FF00));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the L shape by adding square objects to an array list
  */
  void shapeL()
  {
    liveShape.add(new Square(measure, 3, 0, #0000FF));
    liveShape.add(new Square(measure, 4, 0, #0000FF));
    liveShape.add(new Square(measure, 5, 0, #0000FF));
    liveShape.add(new Square(measure, 3, 1, #0000FF));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the T shape by adding square objects to an array list
  */
  void shapeT()
  {
    liveShape.add(new Square(measure, 3, 0, #FFFF00));
    liveShape.add(new Square(measure, 4, 0, #FFFF00));
    liveShape.add(new Square(measure, 5, 0, #FFFF00));
    liveShape.add(new Square(measure, 4, 1, #FFFF00));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the O shape by adding square objects to an array list
  */
  void shapeO()
  {
    liveShape.add(new Square(measure, 4, 0, #FF0000));
    liveShape.add(new Square(measure, 4, 1, #FF0000));
    liveShape.add(new Square(measure, 5, 0, #FF0000));
    liveShape.add(new Square(measure, 5, 1, #FF0000));
    
    checkRotate = 0;
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
        break;
      }//end CASE
      case 1:
      {
        rotateJ();
        break;
      }//end CASE
      case 2:
      {
        rotateI();
        break;
      }//end CASE
      case 3:
      {
        rotatesZ();
        break;
      }//end CASE
      case 4:
      {
        rotateL();
        break;
      }//end CASE
      case 5:
      {
        rotateT();
        break;
      }//end CASE
    }//end switch
  }//end rotate
  
  /*
    Method that will rotate shape I by changing each squares PVectors co-ordinates
  */
  void rotateI()
  {
    if(checkRotate == 0)
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure * 2.0f;
      liveShape.get(3).xy.y += measure * 2.0f;
      
      checkRotate++;
    }
    else
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure * 2.0f;
      liveShape.get(3).xy.y -= measure * 2.0f;
      
      checkRotate = 0;
    }
  }
  
  /*
    Method that will rotate shape S by changing each squares PVectors co-ordinates
  */
  void rotateS()
  {
    if(checkRotate == 0)
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(1).xy.x -= measure * 2;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y += measure;
      
      checkRotate++;
    }//end if
    else
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(1).xy.x += measure * 2;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y -= measure;
      
      checkRotate = 0;
    }
  }
  
  /*
    Method that will rotate shape J by changing each squares PVectors co-ordinates
  */
  void rotateJ()
  {
    if(checkRotate == 0)
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure * 2.0f;
      System.out.println("1");
      
      checkRotate++;
    }//end if
    else if(checkRotate == 1)
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.y -= measure * 2.0f;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 2)
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure * 2.0f;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 3)
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.y += measure * 2.0f;
      
      checkRotate = 0;
    }//end else if
  }//end MENTHOD rotateJ
  
  /*
    Method that will rotate shape Z by changing each squares PVectors co-ordinates
  */
  void rotatesZ()
  {
    if (checkRotate == 0)
    {
      liveShape.get(0).xy.x += measure * 2.0f;
      
      liveShape.get(1).xy.x += measure;
      liveShape.get(1).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure;
      liveShape.get(3).xy.y += measure;
      
      checkRotate++;
    }//end if
    else
    {
      liveShape.get(0).xy.x -= measure * 2.0f;
      
      liveShape.get(1).xy.x -= measure;
      liveShape.get(1).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure;
      liveShape.get(3).xy.y -= measure;
      
      checkRotate = 0;
    }
  }
  
  /*
    Method that will rotate shape L by changing each squares PVectors co-ordinates
  */
  void rotateL()
  {
    if(checkRotate == 0)
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.y -= measure * 2.0f;
      System.out.println("1");
      
      checkRotate++;
    }//end if
    else if(checkRotate == 1)
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure * 2.0f;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 2)
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.y += measure * 2.0f;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 3)
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure * 2.0f;
      
      checkRotate = 0;
    }//end else if
  }
  
  /*
    Method that will rotate shape T by changing each squares PVectors co-ordinates
  */
  void rotateT()
  {
    if(checkRotate == 0)
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure;
      liveShape.get(3).xy.y -= measure;
      System.out.println("1");
      
      checkRotate++;
    }//end if
    else if(checkRotate == 1)
    {
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure;
      liveShape.get(3).xy.y -= measure;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 2)
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure;
      liveShape.get(3).xy.y += measure;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 3)
    {
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure;
      liveShape.get(3).xy.y += measure;
      
      checkRotate = 0;
    }//end else if
  }//end 
}