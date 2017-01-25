class Status
{
  private boolean playing;
  private int shapeIndex;
  
  Status()
  {
    playing = true;
    shapeIndex = (int)random(0,6);
  }//end CONSTRUCTOR Status
  
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
  
  int getShapeIndex()
  {
    return shapeIndex;
  }
}//enn CLASS Status