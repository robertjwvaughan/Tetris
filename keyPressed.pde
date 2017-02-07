void keyPressed()
{
  /*
    If s is pressed, the shape will go down
  */
  if ((key == 's' || key == 'S') && gameStatus.gameState())
  {
    generalDown();
    gameStatus.downCheckZero();
  }//end if
  
  /*
    If a is pressed, the shapes vectors head towards right
  */
  if ((key == 'a' || key == 'A')  && gameStatus.gameState())
  {
    int boolCheck = 0;
    
    for (int i = 0; i < liveShape.size(); i++)
    {
      if (false == liveShape.get(i).boundaryCheck('l') || false == liveShape.get(i).clashCheck(liveShape.get(i), -1))
      {
        boolCheck++;
      }//end if
    }//end for
    
    if (boolCheck == 0)
    {
      for (int i = 0; i < liveShape.size(); i++)
      {
        liveShape.get(i).left();
      }//end for
    }//end if
  }//end if
  
  /*
    If d is pressed, the shapes vectors head towards right
  */
  if ((key == 'd' || key == 'D')  && gameStatus.gameState())
  {
    int boolCheck = 0;
    
    for (int i = 0; i < liveShape.size(); i++)
    {
      if (false == liveShape.get(i).boundaryCheck('r') || false == liveShape.get(i).clashCheck(liveShape.get(i), 1))
      {
        boolCheck++;
      }//end if
    }//end for
    
    if (boolCheck == 0)
    {
      for (int i = 0; i < liveShape.size(); i++)
      {
        liveShape.get(i).right();
      }//end for
    }//end if
  }//end if
  
  if ((key == 'w' || key == 'W')  && gameStatus.gameState())
  {
    shape.rotateShape();
  }//end if
  
  if ((keyCode == ' '))
  {
    while(false != generalDown()  && gameStatus.gameState());
  }
  
  /*
    COndition for if the ENTER key is hit
  */
  
  if (keyCode == ENTER)
  {
    if (changeScreen == 3)
    {
      if (gameStatus.getLock() == false)
      {
        gameStatus.setEnter(true);
      }//end if
    }//end if
    
    //Condition if user is on the menu
    if (gameStatus.getMenu())
    {
      switch(gameStatus.getChoice())
      {
        case 0:
        {
          changeScreen = 0;
          gameStatus.setMenu(false);
          break;
        }//end case 0 (play)
        case 1:
        {
          changeScreen = 6;
          break;
        }//end case 1 (leaderboard)
        case 3:
        {
          //Exits program
          exit();
        }//end case 3
      }//end switch
    }//end if
    
    //Return to menu from game over
    if (changeScreen == 2)
    {
      changeScreen = 3;
      gameStatus.setMenu(true);
      liveShape.clear();
      copyShape.clear();
    }//end if
  }//end if
  
  if (keyCode == UP)
  {
    if (gameStatus.getMenu())
    {
      gameStatus.changeChoice(-1);
    }//end if
  }//end if
  
  if (keyCode == DOWN)
  {
    if (gameStatus.getMenu())
    {
      gameStatus.changeChoice(1);
    }//end if
  }//end if
  
  if (keyCode == LEFT)
  {
    if (changeScreen == 6 && leaderBoard.size() > 0)
    {
      gameStatus.leaderCount(-1);
    }//end if
  }//end if
  
  if (keyCode == RIGHT)
  {
    if (changeScreen == 6 && leaderBoard.size() > 0)
    {
      gameStatus.leaderCount(1);
    }//end if
  }//end if
  
  if (key == 'b' || key == 'B')
  {
    if (changeScreen == 6)
    {
      changeScreen = 3;
    }//end if
  }//end if
  
  if (changeScreen == 2)
  {
    if (keyCode == LEFT)
    {
      gameStatus.moveCharTracker(-1);
    }//end if
    else if(keyCode == RIGHT)
    {
      gameStatus.moveCharTracker(1);
    }//end else if
    else if (keyCode == UP)
    {
      gameStatus.changeChar(-1);
    }//end if
    else if(keyCode == DOWN)
    {
      gameStatus.changeChar(1);
    }//end else if
  }//end if
  
}//end keyPressed