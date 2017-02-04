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
    
    liveShape.get(3).connect.add(liveShape.get(0));
    liveShape.get(3).connect.add(liveShape.get(2));
    liveShape.get(0).connect.add(liveShape.get(1));
    
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
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(2).connect.add(liveShape.get(3));
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
    
    liveShape.get(2).connect.add(liveShape.get(1));
    liveShape.get(2).connect.add(liveShape.get(3));
    liveShape.get(1).connect.add(liveShape.get(0));
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
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(0).connect.add(liveShape.get(3));
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
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(1).connect.add(liveShape.get(3));
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
    move.clear();
    for (int i = 0; i < centre.connect.size(); i++)
    {
      connection(centre.connect.get(i), move);
      
      System.out.println(move.size());
      
      for (int j = 0; j < 1; j++)
      {
        moveSquare(centre, move.get(j));
      }//end for
      move.clear();
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
    }//end else
  }//end METHOD connection()
  
  void moveSquare(Square origin, Square connect)
  {
    for(int i = 0; i < connect.connect.size(); i++)
    {
      moveSquare(connect, connect.connect.get(i));
    }//end for
    
    if (connect.pos == 'L')
    {
      connect.xy.x += measure;
      connect.xy.y -= measure;
      connect.pos = 'U';
      
      for (int i = 0; i < connect.connect.size(); i++)
      {
        fixSquare(connect, connect.connect.get(i));
      }//end for
    }//end if
    else if(connect.pos == 'R')
    {
      connect.xy.x = origin.xy.x;
      connect.xy.y = origin.xy.y + measure;
      connect.pos = 'D';
      
      for (int i = 0; i < connect.connect.size(); i++)
      {
        fixSquare(connect, connect.connect.get(i));
      }//end for
    }//end else if
    else if(connect.pos == 'D')
    {
      connect.xy.x = origin.xy.x - measure;
      connect.xy.y = origin.xy.y;
      connect.pos = 'L';
      
      for (int i = 0; i < connect.connect.size(); i++)
      {
        fixSquare(connect, connect.connect.get(i));
      }//end for
    }//end else if
    else if(connect.pos == 'U')
    {
      connect.xy.x = origin.xy.x + measure;
      connect.xy.y = origin.xy.y;
      connect.pos = 'R';
      
      for (int i = 0; i < connect.connect.size(); i++)
      {
        fixSquare(connect, connect.connect.get(i));
      }//end for
    }//end else if
  }//end METHOD moveSquare
  
  void fixSquare(Square origin, Square connect)
  {
    if (connect.pos == 'L')
    {
      connect.xy.x = origin.xy.x - measure;
      connect.xy.y = origin.xy.y;
    }//end if
    else if (connect.pos == 'U')
    {
      connect.xy.x = origin.xy.x;
      connect.xy.y = origin.xy.y - measure;
    }//end if
    else if (connect.pos == 'R')
    {
      connect.xy.x = origin.xy.x + measure;
      connect.xy.y = origin.xy.y;
    }//end if
    else if (connect.pos == 'D')
    {
      connect.xy.x = origin.xy.x;
      connect.xy.y = origin.xy.y + measure;
    }//end if
  }//end METHOD 
}//end CLASS Shapes