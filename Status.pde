class Status implements trackStatus
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
  private int chars[] = new int[3];
  private int charTrack;
  private int control;
  
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
    multi = 1.25;
    leaderCount = 0;
    control = 0;
  }//end CONSTRUCTOR Status
  
  /*
    Restart game data
  */
  
  void restartData()
  {
    score = 0;
    playing = true;
    shapeIndex = (int)random(0,7);
    downCheck = 0;
    lock = true;
    enter = true;
    menu = true;
    mChoice = 0;
    multi = 1.25;
    leaderCount = 0;
    sound.playSong(playlist.get(0));
    control = 0;
    liveShape.clear();
    copyShape.clear();
    backBoard.nodeDraw();
  }//end METHOD saveData
  
  /*
    Method to get control index
  */
  
  int getControl()
  {
    return control;
  }//end getControl
  
  /*
    Change controlTracking
  */
  void changeControl(int value)
  {
    if ((control + value) < 0)
    {
      control = 1;
    }//end if
    else if ((control + value) > 1)
    {
      control = 0;
    }//end else if
    else
    {
      control = control + value;
    }//end else
  }//end METHOD charTracker()
  
  /*
    Method to set array
  */
  
  void setChars()
  {
    chars[0] = 65;
    chars[1] = 65;
    chars[2] = 65;
    charTrack = 0;
  }//end METHOD setChars
  
  /*
    Change charTracker
  */
  void moveCharTracker(int value)
  {
    if ((charTrack + value) < 0)
    {
      charTrack = 2;
    }//end if
    else if((charTrack + value) > 2)
    {
      charTrack = 0;
    }//end if
    else
    {
      charTrack = charTrack + value;
    }//end else
  }//end METHOD charTracker()
  
  char getChar(int i)
  {
    return (char)chars[i];
  }//end getChar()
  
  void changeChar(int value)
  {
    if ((chars[charTrack] + value) < 65)
    {
      chars[charTrack] = 90;
    }//end if
    else if ((chars[charTrack] + value) > 90)
    {
      chars[charTrack] = 65;
    }//end else if
    else
    {
      chars[charTrack] = chars[charTrack] + value;
      //System.out.println("Hey");
    }//end else
  }//end getChar()
  
  /*
    Method to increment leader count
  */
  
  void leaderCount(int value)
  {
    if ((leaderCount + value) < 0)
    {
      leaderCount = leaderBoard.size() - 1;
    }//end if
    else if ((leaderCount + value) == (leaderBoard.size()))
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
    score += int(10 * multi);
  }//end METHOD addScore
  
  /*
    Inc multi
  */
  void incMulti()
  {
    multi += .25;
  }//end METHOD multi
  
  /*
    Returns multiplier
  */
  float getMulti()
  {
    return multi;
  }//end METHOD getMulti()
  
  /*
    Method to get menu choice
  */
  
  int getChoice()
  {
    return mChoice;
  }//end METHOD getChoice
  
  void changeChoice(int value)
  {
    if (mChoice + value < 0)
    {
      mChoice = 3;
    }//end if
    else if (mChoice + value > 3)
    {
      mChoice = 0;
    }//end if
    else
    {
      mChoice = mChoice + value;
    }//end else
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
    
    gameStatus.addScore();
  }//end swapShapes()
  
  /*
    Method to force speed
  */
  void downCheck()
  {
    if (downCheck % 30 == 0)
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
    Sort Leader List
  */
  
  void sortList()
  {
    String name = "";
    int newPos = 0;
    
    name += getChar(0);
    name += getChar(1);
    name += getChar(2);
    
    boolean check = true;
    
    //Check if list is empty
    if (leaderBoard.size() == 0)
    {
      t.addRow();
      t.setInt(newPos, "Pos", newPos);
      t.setString(newPos,"User", name);
      t.setInt(newPos,"Score", score);
      
      //System.out.println("Second");
      
      saveTable(t, "data/leaderboard.csv");
      
      newPos++;
      
      //System.out.println(0);
      return;
    }//end if
    else if(leaderBoard.size() > 0)
    {
      Table table = new Table();
      
      table.addColumn("Pos");
      table.addColumn("User");
      table.addColumn("Score");
      
      //Loop to check for values
      for (int i = 0; i < leaderBoard.size(); i++)
      {
        if (leaderBoard.get(i).score > getScore() && check == true)
        {
          table.addRow();
          table.setInt(newPos, "Pos", newPos);
          table.setString(newPos ,"User",leaderBoard.get(i).name);
          table.setInt(newPos, "Score", leaderBoard.get(i).score);
          
          //System.out.println(1);
          newPos++;
        }//end if
        else if (getScore() >= leaderBoard.get(i).score && check == true)
        {
          check = false;
          
          table.setInt(newPos, "Pos", newPos);
          table.setString(newPos,"User", name);
          table.setInt(newPos,"Score", score);
          
          i--;
          newPos++;
        }//end else
        else
        {
          table.addRow();
          
          table.setInt(newPos, "Pos", newPos);
          table.setString(newPos ,"User",leaderBoard.get(i).name);
          table.setInt(newPos, "Score", leaderBoard.get(i).score);
          
          newPos++;
        }//end else
      }//end for
      
      //System.out.println("Second");
      saveTable(table, "data/leaderboard.csv");
      return;
    }//end else if
  }//end METHOD sortList()
}//enn CLASS Status