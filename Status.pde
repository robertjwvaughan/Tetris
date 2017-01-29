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
    
    shapeIndex = temp;
    
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
    for(int i = 17; i >= 0; i--)
    {
      for (int j = 9; j >= 0 ; j--)
      {
        for (int k = 0; k < liveShape.size(); k++)
        {
          
        }//end for
      }//end for
    }//end for
  }//end swapShapes()
}//enn CLASS Status