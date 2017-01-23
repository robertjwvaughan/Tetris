class Status
{
  private boolean createMode;
  
  Status()
  {
    createMode = true;
  }//end CONSTRUCTOR Status
  
  boolean gameState()
  {
    if (createMode == true)
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
    if (createMode == true)
    {
      createMode = false;
    }
    else
    {
      createMode = true;
    }//end else
  }//end METHOD gameState()
}//enn CLASS Status