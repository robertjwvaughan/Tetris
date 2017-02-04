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
  Shapes(float sDimension, float x, float y, color col, char pos)
  {
    super(sDimension, x, y, col, pos);
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
    liveShape.add(new Square(measure, 3, 0, #FF6600, 'L'));
    liveShape.add(new Square(measure, 4, 0, #FF6600, 'C'));
    liveShape.add(new Square(measure, 5, 0, #FF6600, 'R'));
    liveShape.add(new Square(measure, 6, 0, #FF6600, 'R'));
    
    checkRotate = 0;
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(2).connect.add(liveShape.get(3));
  }//end METHOD I
  
  /*
    Method that draws the S shape by adding square objects to an array list
  */
  void shapeS()
  {
    liveShape.add(new Square(measure, 4, 0, #66CCFF, 'U'));
    liveShape.add(new Square(measure, 5, 0, #66CCFF, 'R'));
    liveShape.add(new Square(measure, 3, 1, #66CCFF, 'L'));
    liveShape.add(new Square(measure, 4, 1, #66CCFF, 'C'));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the J shape by adding square objects to an array list
  */
  void shapeJ()
  {
    liveShape.add(new Square(measure, 3, 0, #CC00FF, 'L'));
    liveShape.add(new Square(measure, 4, 0, #CC00FF, 'C'));
    liveShape.add(new Square(measure, 5, 0, #CC00FF, 'R'));
    liveShape.add(new Square(measure, 5, 1, #CC00FF, 'D'));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the Z shape by adding square objects to an array list
  */
  void shapeZ()
  {
    liveShape.add(new Square(measure, 3, 0, #00FF00, 'L'));
    liveShape.add(new Square(measure, 4, 0, #00FF00, 'U'));
    liveShape.add(new Square(measure, 4, 1, #00FF00, 'C'));
    liveShape.add(new Square(measure, 5, 1, #00FF00, 'R'));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the L shape by adding square objects to an array list
  */
  void shapeL()
  {
    liveShape.add(new Square(measure, 3, 0, #0000FF, 'L'));
    liveShape.add(new Square(measure, 4, 0, #0000FF, 'C'));
    liveShape.add(new Square(measure, 5, 0, #0000FF, 'R'));
    liveShape.add(new Square(measure, 3, 1, #0000FF, 'D'));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the T shape by adding square objects to an array list
  */
  void shapeT()
  {
    liveShape.add(new Square(measure, 3, 0, #FFFF00, 'L'));
    liveShape.add(new Square(measure, 4, 0, #FFFF00, 'C'));
    liveShape.add(new Square(measure, 5, 0, #FFFF00, 'R'));
    liveShape.add(new Square(measure, 4, 1, #FFFF00, 'D'));
    
    checkRotate = 0;
  }
  
  /*
    Method that draws the O shape by adding square objects to an array list
  */
  void shapeO()
  {
    liveShape.add(new Square(measure, 4, 0, #FF0000, 'N'));
    liveShape.add(new Square(measure, 4, 1, #FF0000, 'N'));
    liveShape.add(new Square(measure, 5, 0, #FF0000, 'N'));
    liveShape.add(new Square(measure, 5, 1, #FF0000, 'N'));
    
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
    float addX = 0;
    float addY = 0;
    if ((int)liveShape.get(0).xy.y < (int)measure * 16)
    {
      if(checkRotate == 0)
      {
        liveShape.get(0).xy.x += measure;
        
        if ((int)liveShape.get(0).xy.y - (int)measure < 0)
        {
          addY = measure;
        }//end if
        
        liveShape.get(0).xy.y -= measure - addY;
        
        liveShape.get(1).xy.y += addY;
        
        liveShape.get(2).xy.x -= measure;
        liveShape.get(2).xy.y += measure + addY;
        
        liveShape.get(3).xy.x -= measure * 2.0f;
        liveShape.get(3).xy.y += measure * 2.0f + addY;
        
        checkRotate++;
      }
      else
      {
        if ((int)liveShape.get(0).xy.x - (int)measure < 0)
        {
          addX = measure;
        }
        liveShape.get(0).xy.x -= measure - addX;
        liveShape.get(0).xy.y += measure;
        
        liveShape.get(1).xy.x += addX;
        
        liveShape.get(2).xy.x += measure + addX;
        liveShape.get(2).xy.y -= measure;
        
        liveShape.get(3).xy.x += measure * 2.0f + addX;
        liveShape.get(3).xy.y -= measure * 2.0f;
        
        checkRotate = 0;
      }
    }
    
  }
  
  /*
    Method that will rotate shape S by changing each squares PVectors co-ordinates
  */
  void rotateS()
  {
    float addX = 0;
    
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
      if (liveShape.get(2).xy.x + measure > measure * 9.0f)
      {
        addX += measure;
      }
      liveShape.get(0).xy.x += measure - addX;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(1).xy.x += measure * 2 - addX;
      
      liveShape.get(2).xy.x -= measure + addX;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x -= addX;
      
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
      float addY = 0;
      
      if ((int)liveShape.get(0).xy.y - (int)measure < 0)
      {
        addY += measure;
      }//end if
      
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure - addY;
      
      liveShape.get(1).xy.y += addY;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure + addY;
      
      liveShape.get(3).xy.x -= measure * 2.0f;
      liveShape.get(3).xy.y += addY;
      System.out.println("1");
      
      checkRotate++;
    }//end if
    else if(checkRotate == 1)
    {
      float addX = 0;
      
      if ((int)liveShape.get(0).xy.x + (int)measure > (int)(measure * 9))
      {
        addX += measure;
      }//end if
      
      liveShape.get(0).xy.x += measure - addX;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(1).xy.x -= addX;
      
      liveShape.get(2).xy.x -= measure + addX;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x -= addX;
      liveShape.get(3).xy.y -= measure * 2.0f;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 2)
    {
      float addY = 0;
      
      if ((int)liveShape.get(0).xy.y + (int)measure > (int)(measure * 17.0f))
      {
        addY += measure;
      }//end if
      
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure - addY;

      liveShape.get(1).xy.y -= addY;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure + addY;
      
      liveShape.get(3).xy.x += measure * 2.0f;
      liveShape.get(3).xy.y -= addY;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 3)
    {
      float addX = 0;
      
      if ((int)liveShape.get(0).xy.x - (int)measure < 0)
      {
        addX += measure;
      }//end if
      
      liveShape.get(0).xy.x -= measure - addX;
      liveShape.get(0).xy.y -= measure;

      liveShape.get(1).xy.x += addX;
      
      liveShape.get(2).xy.x += measure + addX;
      liveShape.get(2).xy.y += measure;

      liveShape.get(3).xy.x += addX;
      liveShape.get(3).xy.y += measure * 2.0f;
      
      checkRotate = 0;
    }//end else if
  }//end MENTHOD rotateJ
  
  /*
    Method that will rotate shape Z by changing each squares PVectors co-ordinates
  */
  void rotatesZ()
  {
    float addX = 0;
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
      if ((int)liveShape.get(2).xy.x - (int)measure < 0)
      {
        addX = measure;
      }
      liveShape.get(0).xy.x -= measure * 2.0f - addX;
      
      liveShape.get(1).xy.x -= measure - addX;
      liveShape.get(1).xy.y -= measure;
      
      liveShape.get(2).xy.x += addX;
      
      liveShape.get(3).xy.x += measure + addX;
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
      float addY = 0;
      
      if (liveShape.get(0).xy.y - measure < 0)
      {
        addY = measure;
      }
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure - addY;
      
      liveShape.get(1).xy.y += addY;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure + addY;
      
      liveShape.get(3).xy.y -= measure * 2.0f - addY;
      System.out.println("1");
      
      checkRotate++;
    }//end if
    else if(checkRotate == 1)
    {
      float addX = 0;
      
      if ((int)liveShape.get(0).xy.x + measure > (int)(measure * 9.0f))
      {
        addX = measure;
      }//end if
      
      liveShape.get(0).xy.x += measure - addX;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(1).xy.x -= addX;
      
      liveShape.get(2).xy.x -= measure + addX;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure * 2.0f - addX;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 2)
    {
      float addY = 0;
      
      if ((int)liveShape.get(0).xy.y + measure > (int)(measure * 17.0f))
      {
        addY = measure;
      }//end if
      
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure - addY;
      
      liveShape.get(1).xy.y -= addY;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure + addY;
      
      liveShape.get(3).xy.y += measure * 2.0f - addY;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 3)
    {
      float addX = 0;
      
      if ((int)liveShape.get(0).xy.x - measure < 0)
      {
        addX = measure;
      }//end if
      
      liveShape.get(0).xy.x -= measure - addX;
      liveShape.get(0).xy.y -= measure;

      liveShape.get(1).xy.x += addX;
      
      liveShape.get(2).xy.x += measure + addX;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure * 2.0f - addX;
      
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
      float addY = 0;
      
      if ((int)liveShape.get(0).xy.y - (int)measure < 0)
      {
        addY = measure;
      }//end if
      
      liveShape.get(0).xy.x += measure;
      liveShape.get(0).xy.y -= measure - addY;
      
      liveShape.get(1).xy.y += addY;
      
      liveShape.get(2).xy.x -= measure;
      liveShape.get(2).xy.y += measure + addY;
      
      liveShape.get(3).xy.x -= measure;
      liveShape.get(3).xy.y -= measure - addY;
      System.out.println("1");
      
      checkRotate++;
    }//end if
    else if(checkRotate == 1)
    {
      float addX = 0;
      
      if ((int)(liveShape.get(0).xy.x + measure) > (int)(measure * 9))
      {
        addX = measure;
      }//end if
      
      liveShape.get(0).xy.x += measure - addX;
      liveShape.get(0).xy.y += measure;
      
      liveShape.get(1).xy.x -= addX;
      
      liveShape.get(2).xy.x -= measure + addX;
      liveShape.get(2).xy.y -= measure;
      
      liveShape.get(3).xy.x += measure - addX;
      liveShape.get(3).xy.y -= measure;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 2)
    {
      float addY = 0;
      
      if ((int)(liveShape.get(0).xy.y + measure) > (int)(measure * 17))
      {
        addY = measure;
      }//end if
      
      liveShape.get(0).xy.x -= measure;
      liveShape.get(0).xy.y += measure - addY;
      
      liveShape.get(1).xy.y -= addY;
      
      liveShape.get(2).xy.x += measure;
      liveShape.get(2).xy.y -= measure + addY;
      
      liveShape.get(3).xy.x += measure;
      liveShape.get(3).xy.y += measure - addY;
      
      checkRotate++;
    }//end else if
    else if(checkRotate == 3)
    {
      float addX = 0;
      
      if ((int)(liveShape.get(0).xy.x - measure) < 0)
      {
        addX = measure;
      }//end if
      
      liveShape.get(0).xy.x -= measure - addX;
      liveShape.get(0).xy.y -= measure;
      
      liveShape.get(1).xy.x += addX;
      
      liveShape.get(2).xy.x += measure + addX;
      liveShape.get(2).xy.y += measure;
      
      liveShape.get(3).xy.x -= measure - addX;
      liveShape.get(3).xy.y += measure;
      
      checkRotate = 0;
    }//end else if
  }//end METHOD
  
  /*
    Method that refines the roatation algorithm
  */
  
  void testI()
  {
    for (int i = 0; i < liveShape.size(); i++)
    {
      if (liveShape.get(i).center == true)
      {
        centre(liveShape.get(i));
        i = liveShape.size() + 1;
        System.out.println("Found Center");
      }//end if
    }//end for
  }//end METHOD testI()
  
  void centre(Square centre)
  {
    ArrayList<Square> move = new ArrayList<Square>();
    
    for (int i = 0; i < centre.connect.size(); i++)
    {
      connection(centre.connect.get(i), move);
      
      for (int j = 0; j < move.size(); j++)
      {
        
      }//end for
    }
  }//end 
  
  void connection(Square piece, ArrayList c)
  {
    c.add(piece);
    if (piece.connect.size() != 0)
    {
      for (int i = 0; i < piece.connect.size(); i++)
      {
        connection(piece.connect.get(0), c);
      }//end for
    }//end if
    else
    {
      return;
    }
    
  }//end METHOD connection()
}