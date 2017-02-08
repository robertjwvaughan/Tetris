class MainMenu
{
  int menuNum;
  float measure;
  ArrayList<Square> T = new ArrayList<Square>();
  float intro = 0;
  color tColour = 0;
  color gameColour = 0;
  float enterTime = 0;
  int menuValue = 0;
  
  /*
    Setter
  */
  void setTColour(color value)
  {
    tColour = value;
  }//end METHOD setColour
  
  /*
    Accessor
  */
  color getTColour()
  {
    return tColour;
  }//end METHOD setColour
  
  void setGameColour(color value)
  {
    gameColour = value;
  }//end METHOD setColour
  
  /*
    Accessor
  */
  color getGameColour()
  {
    return gameColour;
  }//end METHOD setColour
  
  MainMenu(float lengths)
  {
    measure = lengths;
    T.clear();
    
    for (int i = 0; i < 2; i++)
    {
      for (int j = 0; j < 10; j++)
      {
        T.add(new Square(measure, j, i, #FFFF00, 'N'));
      }
    }//end for
    T.add(new Square(measure, 0, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 1, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 4, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 5, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 8, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 9, 2, #FFFF00, 'N'));
    
    for (int i = 3; i < 7; i++)
    {
      for (int j = 4; j < 6; j++)
      {
        T.add(new Square(measure, j, i, #FFFF00, 'N'));
      }//end nested for
    }//end for
  }//end CONSTRUCTOR
  
  /*
    Method to display controls
  */
  
  void controls()
  {
    //Translates the sketch so the baords corner is (0,0)
    if (gameStatus.getControl() == 0)
    {
      textSize(map(20, 0, 683, 0, width));
      textAlign(CENTER, CENTER);
      
      fill(#FF0000);
      text("GAME", width / 2.0f, (height / 8.0f) * 1.0f);
      
      fill(0);
      textSize(map(17, 0, 683, 0, width));
      text("LEFT - A KEY", width / 2.0f, (height / 8.0f) * 2.0f);
      text("RIGHT - D KEY", width / 2.0f, (height / 8.0f) * 3.0f);
      text("DOWN - S KEY", width / 2.0f, (height / 8.0f) * 4.0f);
      text("ROTATE - W KEY", width / 2.0f, (height / 8.0f) * 5.0f);
      text("SLAM - SPACE", width / 2.0f, (height / 8.0f) * 6.0f);
      
      text("Menu - B Key", width / 2.0f, (height / 8.0f) * 7.0f);
    }//end if
    else
    {
      textSize(map(20, 0, 683, 0, width));
      textAlign(CENTER, CENTER);
      
      fill(#FF6600);
      text("MENU", width / 2.0f, (height / 7.0f) * 1.0f);
      
      fill(0);
      textSize(map(17, 0, 683, 0, width));
      text("LEFT - LEFT KEY", width / 2.0f, (height / 7.0f) * 2.0f);
      text("RIGHT - RIGHT KEY", width / 2.0f, (height / 7.0f) * 3.0f);
      text("DOWN - DOWN KEY", width / 2.0f, (height / 7.0f) * 4.0f);
      text("APPROVE - ENTER KEY", width / 2.0f, (height / 7.0f) * 5.0f);
      
      text("Menu - B Key", width / 2.0f, (height / 7.0f) * 6.0f);
    }//end else
  }//ened controls()
  
  /*
    Method to draw TShape
  */
  
  void TShape(color value)
  {
    for (int i = 0; i < T.size(); i++)
    {
      T.get(i).square.setFill(value);
      T.get(i).square.setStroke(value);
      T.get(i).drawSquare();
    }//end for
  }//end MEHTOD TShape()
  
  /*
    Method that creates a main menu
  */
  
  void createMenu()
  {
    backBoard.defaultBackground();
    
    gameStatus.setMenu(true);
    
    ArrayList<Float> yValues = new ArrayList<Float>();
    ArrayList<Float> y = new ArrayList<Float>();
    ArrayList<String> modes = new ArrayList<String>();
    
    //Data nad values required for the drawing of th menu
    y.add(0.0f);
    y.add(((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f);
    y.add(((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) * 2.0f));
    y.add((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) * 3.0f);
    
    yValues.add((0 + ((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) / 2.0f);
    yValues.add(((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) + ((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) * 2.0f)) / 2.0f);
    yValues.add(((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) * 2.0f + ((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) * 3.0f)) / 2.0f);
    yValues.add(((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) * 3.0f + ((((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f) * 4.0f)) / 2.0f);
    
    modes.add("PLAY");
    modes.add("LEADERBOARD");
    modes.add("CONTROLS");
    modes.add("EXIT");
    
     pushMatrix();
        //Translates the sketch so the baords corner is 0,half
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f));
        noStroke();
        textAlign(CENTER, CENTER);
        textSize(map(20, 0, 683, 0, width));
        
        for (int i = 0; i < modes.size(); i++)
        {
          if (i == gameStatus.getChoice())
          {
            fill(#FF6600);
            rect(0 + 1, y.get(i), ((height - map(50, 0, 384, 0, height)) / 18.0f) * 10.0f  - 2.0f, ((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f);
            fill(#66CCFF);
            text(modes.get(i), ((height - map(50, 0, 384, 0, height)) / 18.0f) * 10.0f / 2.0f, yValues.get(i));
          }//end if
          else
          {
            fill(#CADCF0);
            rect(0 + 1, y.get(i), ((height - map(50, 0, 384, 0, height)) / 18.0f) * 10.0f - 2.0f, ((height - (map(50, 0, 384, 0, height))) / 2.0f) / 4.0f);
            fill(#FF0000);
            text(modes.get(i), ((height - map(50, 0, 384, 0, height)) / 18.0f) * 10.0f / 2.0f, yValues.get(i));
          }//end else
        }//end for
        
     popMatrix();
  }//end methodCreate menu
  
  /*
    Method that takes a users option in terms of menu selection
  */
  
  void leaderBoard()
  {
    textSize(map(25, 0, 683, 0, width));
    
    //Title of page
    fill(0);
    text("LEADERBOARD", width / 2.0f, (((height / 4.0f) * 1.f) + 0) / 2.0f);
    
    textSize(map(27, 0, 683, 0, width));
    
    //Check to see if there are values in the leaderboard
    if (leaderBoard.size() == 0)
    {
      textAlign(CENTER, BOTTOM);
      fill(#FF0000);
      text("NO SCORES", width / 2.0f, height / 2.0f);
      textAlign(CENTER, TOP);
      text("TO DISPLAY", width / 2.0f, height / 2.0f);
    }
    else
    {
      textAlign(CENTER, CENTER);
      gameStatus.getLeader();
      
      fill(#FF0000);
      text("#" + (leaderBoard.get(gameStatus.getLeader()).pos + 1), width / 2.0f, (height / 4.0f) * 1.f);
      text(leaderBoard.get(gameStatus.getLeader()).name, width / 2.0f, (height / 4.0f) * 2.f);
      text(leaderBoard.get(gameStatus.getLeader()).score, width / 2.0f, (height / 4.0f) * 3.f);
    }//end else
    
    textAlign(CENTER, CENTER);
    fill(0);
    text("Menu - Pess B", width / 2.0f, (((height / 4.0f) * 3.f) + height) / 2.0f);
  }//end METHOD leaderBoard()
  
  /*
    Method that draws a users name
  */
  void getID()
  {
    fill(0);
    //System.out.println(gameStatus.getChar(0) +" "+ gameStatus.getChar(1) +" "+ gameStatus.getChar(2));
    text(gameStatus.getChar(0)+" "+ gameStatus.getChar(1) +" "+ gameStatus.getChar(2), width / 2.0f, (height / 4.0f) * 3.f);
  }//end METHOD ge
}//end CLASS MainMenu