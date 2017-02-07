class Status
{
  private boolean playing;
  private int shapeIndex;
  private int downCheck;
  private int score;
  private boolean lock;
  private long tetris;
  private boolean enter;
  private boolean menu;
  private int mChoice;
  private float multi;
  private int leaderCount = 0;
  
  /*
    A constructor that sets up a games state
  */
  
  Status()
  {
    score = 0;
    playing = true;
    shapeIndex = (int)random(0,7);
    downCheck = 0;
    lock = true;
    enter = false;
    menu = false;
    mChoice = 0;
    multi = 1;
    leaderCount = 0;
  }//end CONSTRUCTOR Status
  
  /*
    Method to increment leader count
  */
  
  void leaderCount(int value)
  {
    if ((leaderCount + value) < 0)
    {
      leaderCount = leaderBoard.size() - 1;
    }//end if
    else if ((leaderCount + 1) == (leaderBoard.size()))
    {
      leaderCount = 0;
    }//end else if
    else
    {
      leaderCount = leaderCount + value;
    }//end else
  }//end METHOD leaderCount()
  
  /*
    Method to return leader count
  */
  
  int getLeader()
  {
    return leaderCount;
  }//end METHOD leaderCount()
  
  /*
    Method to add to score
  */
  void addScore()
  {
    score = int(10 * multi);
  }//end METHOD addScore
  
  /*
    Inc multi
  */
  void incMulti()
  {
    multi += .25;
  }//end METHOD multi
  
  /*
    Method to get menu choice
  */
  
  int getChoice()
  {
    return mChoice;
  }//end METHOD getChoice
  
  void changeChoice(int value)
  {
    mChoice = mChoice + value;
    mChoice = mChoice % 4;
  }//end METHOD changeChoice
  
  /*
    Method to retrieve menu check
  */
  boolean getMenu()
  {
    return menu;
  }//end METHOD getMenu
  
  /*
    Method to change menu check
  */
  void setMenu(boolean value)
  {
    menu = value;
  }//end METHOD setMenu()
  
  /*
    Method to get enter check
  */
  
  boolean getEnter()
  {
    return enter;
  }//end METHOD getEnter()
  
  /*
    Method to change enter check
  */
  
  void setEnter(boolean change)
  {
    enter = change;
  }//end METHOD getEnter()
  
  /*
    Method to set Tetris
  */
  
  void setTetris()
  {
    tetris = frameCount;
  }//end METHOD setTetris
  
  /*
    Method to get Tetris
  */
  
  long getTetris()
  {
    return tetris;
  }//end METHOD setTetris
  
  /*
    Method to set GameLock
  */
  
  boolean getLock()
  {
    return lock;
  }//end ACCESSOR getLock()
  
  /*
    Method to return GameLock
  */
  
  void changeLock()
  {
    lock = false;
  }//end SETTER
  
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
  
  /*
    Sort List
  */
  
  void sortList()
  {
    ArrayList<Leaderboards> newScores = new ArrayList<Leaderboards>();
    
    //Checks if the leader board contains 
    if (leaderBoard.size() == 0)
    {
      
    }//end if
    else
    {
      
    }//end else
    for (int i = 0; i < list.size(); i++)
    {
      if (getScore() == 0)
      {
        
      }//end if
    }//end for
  }//end METHOD sortList()
}//enn CLASS Status