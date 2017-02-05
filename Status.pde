class Status
{
  private boolean playing;
  private int shapeIndex;
  private int downCheck;
  private int score;
  
  /*
    A constructor that sets up a games state
  */
  Status()
  {
    score = 0;
    playing = true;
    shapeIndex = (int)random(0,7);
    downCheck = 0;
  }//end CONSTRUCTOR Status
  
  /*
    Method that returns the game score
  */
  
  int getScore()
  {
    return score;
  }//end getScore
  
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
    int temp = (int)random(0,7);
    
    while(temp == shapeIndex)
    {
      temp = (int)random(0,7);
    }//end while
    
    this.shapeIndex = temp;
    
    shape.indexCall(temp);
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
            //System.out.println("GRKLJDVSM");
            //deadShape.add(liveShape.get(k));
            cells[i][j].active = false;
            cells[i][j].square = liveShape.get(k);
          }//end if
        }//end if
      }//end for
    }//end for
  }//end swapShapes()
  
  /*
    Method to force speed
  */
  void downCheck()
  {
    if (downCheck % 60 == 0)
    {
      generalDown();
    }
  }//end METHOD downCheck()
  
  /*
    Method to set frame rate measure to zero
  */
  void downCheckZero()
  {
    downCheck = 0;
  }//end METHOD downCheckZero()
  
  /*
    Increments frame count tracker every frame
  */
  void downCheckInc()
  {
    downCheck++;
  }//end METHOD downCheckZero()
}//enn CLASS Status