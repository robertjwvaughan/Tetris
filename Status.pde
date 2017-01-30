class Status
{
  private boolean playing;
  private int shapeIndex;
  
  /*
    A constructor that sets up a games state
  */
  Status()
  {
    playing = true;
    shapeIndex = (int)random(0,6);
  }//end CONSTRUCTOR Status
  
  /*
    Method checks the current game state
  */
  boolean gameState()
  {
    if (playing == true)
    {
      return true;
    }
    else
    {
      return false;
    }//end else
  }//end METHOD gameState()
  
  /*
    Method that changes the games state
  */
  void changeState()
  {
    if (playing == true)
    {
      playing = false;
    }
    else
    {
      playing = true;
    }//end else
  }//end METHOD gameState()
  
  /*
    Method that chooses a shape at radnom with a index
  */
  void chooseShape()
  {
    int temp = (int)random(0,6);
    
    while(temp == shapeIndex)
    {
      temp = (int)random(0,6);
    }//end while
    
    this.shapeIndex = temp;
    
    shape.indexCall(shapeIndex);
  }//end chooseShape()
  
  /*
    Method that gets the current shapes index value
  */
  int getShapeIndex()
  {
    return shapeIndex;
  }
  
  void swapShapes()
  {
    for (int i = 17; i >= 0; i--)
    {
      for (int j = 0; j < 10; j++)
      {
        for (int k = 0; k < liveShape.size(); k++)
        {
          if ((int)liveShape.get(k).xy.x == (int)cells[i][j].ordinates.x && (int)liveShape.get(k).xy.y == (int)cells[i][j].ordinates.y)
          {
            System.out.println("GRKLJDVSM");
            deadShape.add(liveShape.get(k));
          }//end if
        }//end if
      }//end for
    }//end for
    System.out.println(deadShape.size());
  }//end swapShapes()
}//enn CLASS Status