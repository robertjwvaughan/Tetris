int pass = 0;

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
    
    copyShape.add(new Square(measure, 3, 0, #FF6600, 'L'));
    copyShape.add(new Square(measure, 4, 0, #FF6600, 'C'));
    copyShape.add(new Square(measure, 5, 0, #FF6600, 'R'));
    copyShape.add(new Square(measure, 6, 0, #FF6600, 'R'));
    
    //checkRotate = 0;
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(2).connect.add(liveShape.get(3));
    
    copyShape.get(1).connect.add(liveShape.get(0));
    copyShape.get(1).connect.add(liveShape.get(2));
    copyShape.get(2).connect.add(liveShape.get(3));
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
    
    copyShape.add(new Square(measure, 4, 0, #66CCFF, 'U'));
    copyShape.add(new Square(measure, 5, 0, #66CCFF, 'R'));
    copyShape.add(new Square(measure, 3, 1, #66CCFF, 'L'));
    copyShape.add(new Square(measure, 4, 1, #66CCFF, 'C'));

    copyShape.get(3).connect.add(liveShape.get(0));
    copyShape.get(3).connect.add(liveShape.get(2));
    copyShape.get(0).connect.add(liveShape.get(1));
    
    //checkRotate = 0;
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
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(2).connect.add(liveShape.get(3));
    
    copyShape.add(new Square(measure, 3, 0, #CC00FF, 'L'));
    copyShape.add(new Square(measure, 4, 0, #CC00FF, 'C'));
    copyShape.add(new Square(measure, 5, 0, #CC00FF, 'R'));
    copyShape.add(new Square(measure, 5, 1, #CC00FF, 'D'));
    
    copyShape.get(1).connect.add(liveShape.get(0));
    copyShape.get(1).connect.add(liveShape.get(2));
    copyShape.get(2).connect.add(liveShape.get(3));
    
    //checkRotate = 0;
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
    
    liveShape.get(2).connect.add(liveShape.get(1));
    liveShape.get(2).connect.add(liveShape.get(3));
    liveShape.get(1).connect.add(liveShape.get(0));
    
    copyShape.add(new Square(measure, 3, 0, #00FF00, 'L'));
    copyShape.add(new Square(measure, 4, 0, #00FF00, 'U'));
    copyShape.add(new Square(measure, 4, 1, #00FF00, 'C'));
    copyShape.add(new Square(measure, 5, 1, #00FF00, 'R'));
    
    copyShape.get(2).connect.add(liveShape.get(1));
    copyShape.get(2).connect.add(liveShape.get(3));
    copyShape.get(1).connect.add(liveShape.get(0));
    
    //checkRotate = 0;
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
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(0).connect.add(liveShape.get(3));
    
    copyShape.add(new Square(measure, 3, 0, #0000FF, 'L'));
    copyShape.add(new Square(measure, 4, 0, #0000FF, 'C'));
    copyShape.add(new Square(measure, 5, 0, #0000FF, 'R'));
    copyShape.add(new Square(measure, 3, 1, #0000FF, 'D'));
    
    copyShape.get(1).connect.add(liveShape.get(0));
    copyShape.get(1).connect.add(liveShape.get(2));
    copyShape.get(0).connect.add(liveShape.get(3));
    
    //checkRotate = 0;
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
    
    liveShape.get(1).connect.add(liveShape.get(0));
    liveShape.get(1).connect.add(liveShape.get(2));
    liveShape.get(1).connect.add(liveShape.get(3));
    
    copyShape.add(new Square(measure, 3, 0, #FFFF00, 'L'));
    copyShape.add(new Square(measure, 4, 0, #FFFF00, 'C'));
    copyShape.add(new Square(measure, 5, 0, #FFFF00, 'R'));
    copyShape.add(new Square(measure, 4, 1, #FFFF00, 'D'));
    
    copyShape.get(1).connect.add(liveShape.get(0));
    copyShape.get(1).connect.add(liveShape.get(2));
    copyShape.get(1).connect.add(liveShape.get(3));
    
    //checkRotate = 0;
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
    
    copyShape.add(new Square(measure, 4, 0, #FF0000, 'N'));
    copyShape.add(new Square(measure, 4, 1, #FF0000, 'N'));
    copyShape.add(new Square(measure, 5, 0, #FF0000, 'N'));
    copyShape.add(new Square(measure, 5, 1, #FF0000, 'N'));
    
    //checkRotate = 0;
  }
  
  /*
    Method that refines the roatation algorithm
  */
  
  void rotateShape()
  {
    ArrayList<Square> copyShape = new ArrayList<Square>(liveShape);
    
    for (int i = 0; i < copyShape.size(); i++)
    {
      if (copyShape.get(i).center == true)
      {
        centre(copyShape.get(i));
        i = copyShape.size() + 1;
        //System.out.println("Found Center");
      }//end if
    }//end for
    
    /*
      A loop that checks whether a square is out of bounds
    */
    
    for (int i = 0; i < copyShape.size(); i++)
    {
      if ((int)copyShape.get(i).xy.x < 0)
      {
        for (int j = 0; j < copyShape.size(); j++)
        {
          //System.out.println("Copy: " + copyShape.get(j).xy.x + " Live: " + liveShape.get(j).xy.x);
          copyShape.get(j).xy.x += measure;
          //System.out.println("Copy: " + copyShape.get(j).xy.x + " Live: " + liveShape.get(j).xy.x);
        }//end for
      }//end if
      if ((int)copyShape.get(i).xy.x > (int)(measure * 9))
      {
        for (int j = 0; j < copyShape.size(); j++)
        {
          copyShape.get(j).xy.x -= measure;
        }//end for
      }//end if
      if ((int)copyShape.get(i).xy.y < 0)
      {
        for (int j = 0; j < copyShape.size(); j++)
        {
          copyShape.get(j).xy.y += measure;
        }//end for
      }//end if
      if ((int)copyShape.get(i).xy.y > (int)(measure * 17))
      {
        for (int j = 0; j < copyShape.size(); j++)
        {
          copyShape.get(j).xy.y -= measure;
        }//end for
      }//end if
    }//end for
    
    for (int i = 0; i < 18; i++)
    {
      for (int j = 0; j < 10; j++)
      {
        for (int k = 0; k < copyShape.size(); k++)
        {
          if ((int)cells[i][j].ordinates.x == (int)copyShape.get(k).xy.x && (int)cells[i][j].ordinates.y == (int)copyShape.get(k).xy.y)
          {
            if (cells[i][j].active == false)
            {
              pass++;
              //System.out.println("HEYYYY");
              k = copyShape.size();
              j = 10;
              i = 18;
            }//end if
          }//end if
        }//end for
      }//end for
    }//end for
    
    /*
      Swaps values into active array list
    */
    
    if (pass > 0)
    {
      for (int i = 0; i < liveShape.size(); i++)
      {
        copyValues(copyShape.get(i), liveShape.get(i));
      }//end for
    }//end if
    
    pass = 0;
  }//end METHOD testI()
  
  void centre(Square centre)
  {
    ArrayList<Square> move = new ArrayList<Square>();
    move.clear();
    
    for (int i = 0; i < centre.connect.size(); i++)
    {
      connection(centre.connect.get(i), move);
      
      //System.out.println(move.size());
      
      for (int j = 0; j < 1; j++)
      {
        moveSquare(centre, move.get(j));
      }//end for
      move.clear();
    }
  }//end 
  
  /*
    A method that adds 
  */
  
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
  
  /*
    A methof that takes a parent and a child square
    and rotates the child, based on the parents location 
    and state
  */
  
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
  
  void searchSquare(int x, int y)
  {
    for (int i = 0; i < 18; i++)
    {
      for (int j = 0; j < 10; j++)
      {
        if((int)cells[i][j].ordinates.x == x && (int)cells[i][j].ordinates.y == y)
        {
          if (cells[i][j].active == false)
          {
            pass++;
          }//end if
        }//end if
      }//end for
    }//end for
  }//end searchSquare
  
  /*
    A method to realign squares if their parent square has
    been moved
  */
  
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
  
  /*
    Method that copies a Square object into another
  */
  
  void copyValues(Square newSquare, Square oldSquare)
  {
    newSquare.square = oldSquare.square;
    newSquare.xy.x = oldSquare.xy.x;
    newSquare.xy.y = oldSquare.xy.y;
    newSquare.measure = oldSquare.measure;
    newSquare.center = oldSquare.center;
    newSquare.pos = oldSquare.pos;
    
    for (int i = 0; i < oldSquare.connect.size(); i++)
    {
      copyValues(newSquare.connect.get(i), oldSquare.connect.get(i));
    }//end for
  }//end METHOD copyValues
}//end CLASS Shapes