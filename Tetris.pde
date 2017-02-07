import ddf.minim.*;

//#CC00FF - Pink (J)
//#FF6600 - Orange (I)
//#66CCFF - Turk (S)
//#FF0000 - Red (O)
//#0000FF - Blue (L)
//#00FF00 - Green (Z)
//#FFFF00 - Yellow (T)

//#CADCF0

/*
  Declaration of GLOBAL (EWWWW) variables
*/
Board backBoard;//Tetris board
Status gameStatus;//Status of the game tracked
Shapes shape;//Shape object
MainMenu menu;
//Array list to store objects of squares to create shapes
ArrayList<Square> liveShape = new ArrayList<Square>();
ArrayList<Square> copyShape = new ArrayList<Square>();
//Arraylist to store int values as index for a Tetris line
ArrayList<Integer> list = new ArrayList<Integer>();
ArrayList<Leaderboards> leaderBoard = new ArrayList<Leaderboards>();

Cell cells[][] = new Cell[18][10];

int changeScreen;

//int checkRotate;

Table t;

PFont font;
boolean frameChange = true;

void setup()
{
  //fullScreen();
  size(683, 384);
  frameRate(60);
  //Square x = new Square((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  font = loadFont("LeelawadeeUI-Bold-48.vlw");
  textFont(font);
  //Creates the board object
  backBoard = new Board(((height - map(50, 0, 384, 0, height)) / 18.0f));
  gameStatus = new Status();
  
  //Creates co-ordinates for nodes
  backBoard.nodeDraw();
  shape = new Shapes((height - map(50, 0, 384, 0, height)) / 18.0f, 1, 17, (color)random(0,255), 'N');
  changeScreen = 4;
  background(#CADCF0);
  
  //object to call menu methods
  menu = new MainMenu((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  //Loading leaderboard data
  loadFile();
  
  //Sets char inputs to AAA in decimal
  gameStatus.setChars();
}//end setup

void draw()
{
  stroke(0);
  //Switch statement to track
  switch(changeScreen)
  {
    //Case the creates a new shape to be drawn on screen
    case 0:
    { 
      background(#CADCF0);
      backBoard.defaultBackground();
      gameStatus.downCheckZero();
      //checkCells();
      pushMatrix();
        
        //Translates the sketch so the boards edge is (0,0)
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f); 
        
        textAlign(LEFT, BOTTOM);
        textSize(map(15, 0, 683, 0, width));
        fill(0);
        text("Score: " + gameStatus.getScore(), 0, 0);
        
        //backBoard.nodeDraw();
        liveShape.clear();
        copyShape.clear();
        gameStatus.chooseShape();
        
        textAlign(CENTER,TOP);
        fill(0);
        
        System.out.println("Shape call");
        
        for (int i = 17; i >= 0; i--)
        {
          for (int j = 0; j < 10; j++)
          {
            if (cells[i][j].active == false)
            {
              fill(255);
              rect((float)j * (height - map(50, 0, 384, 0, height)) / 18.0f, (float)i * (height - map(50, 0, 384, 0, height)) / 18.0f, 5, 5);
              cells[i][j].drawSquare();
            }//end else
            else
            {
              fill(0);
              rect((float)j * (height - map(50, 0, 384, 0, height)) / 18.0f, (float)i * (height - map(50, 0, 384, 0, height)) / 18.0f, 5, 5);
            }//end else
          }//end for
        }//end for
        
      popMatrix();
      
      changeScreen = 1;
      break;
    }//end case 0
    case 1:
    {
      background(#CADCF0);
      //Draws background
      backBoard.defaultBackground();
      
      pushMatrix();
        //Translates the sketch so the baords corner is (0,0)
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
        //backBoard.nodeDraw();
        
        textAlign(LEFT, BOTTOM);
        textSize(map(15, 0, 683, 0, width));
        fill(0);
        text("Score: " + gameStatus.getScore(), 0, 0);
        
        //Game Over check
        for (int i = 0; i < 2; i++)
        {
          for (int j = 0; j < 10; j++)
          {
            for (int k = 0; k < liveShape.size(); k++)
            {
              if((int)cells[i][j].ordinates.x == (int)liveShape.get(k).xy.x && (int)cells[i][j].ordinates.y == (int)liveShape.get(k).xy.y)
              {
                if (cells[i][j].active == false)
                {
                  changeScreen = 2;//GAme Over
                  gameStatus.changeState();
                }//end if
              }//end if
            }//end for
          }//end for
        }//end for
        
        //Draws live shapes
        for (int i = 0; i < liveShape.size(); i++)
        {
          liveShape.get(i).drawSquare();
        }//end for
        
        //Draws dead shapes
        for (int i = 17; i >= 0; i--)
        {
          for (int j = 0; j < 10; j++)
          {
            if (cells[i][j].active == false)
            {
              fill(255);
              rect((float)j * (height - map(50, 0, 384, 0, height)) / 18.0f, (float)i * (height - map(50, 0, 384, 0, height)) / 18.0f, 5, 5);
              cells[i][j].drawSquare();
            }//end if
            else
            {
              fill(0);
              rect((float)j * (height - map(50, 0, 384, 0, height)) / 18.0f, (float)i * (height - map(50, 0, 384, 0, height)) / 18.0f, 5, 5);
            }//end else
          }//end for
        }//end for
      popMatrix();
      
      //Copying object field values to another
      for (int i = 0; i < liveShape.size(); i++)
      {
        shape.copyValues(copyShape.get(i), liveShape.get(i));
      }//end for
    
      gameStatus.downCheckInc();
      gameStatus.downCheck(); 
      break;
    }
    case 2:
    {
      fill(#CADCF0);
      noStroke();
      rectMode(CENTER);
      
      rect(width / 2.0f, height / 2.0f, ((height - map(50, 0, 384, 0, height)) / 18.0f) * 10.0f - (map(10, 0, 384, 0, height)), height - (map(150, 0, 384, 0, height)));
      
      textSize(map(30, 0, 683, 0, width));
      textAlign(CENTER, CENTER);
      fill(0);
      
      text("GAME OVER", width / 2.0f, height / 4.0f);
      
      textSize(map(25, 0, 683, 0, width));
      text("SCORE", width / 2.0f, height / 2.0f);
      textAlign(CENTER, TOP);
      text(gameStatus.getScore(), width / 2.0f, height / 2.0f + map(20, 0, 384, 0, height));
      
      /*
      textAlign(CENTER, CENTER);
      text("Menu - Press B", width / 2.0f, (height / 4.0f) * 3.0f);
      */
      menu.getID();
      break;
    }//end case 2 
    //Menu case
    case 3:
    {
      background(#CADCF0);
      //Locks the games keys
      gameStatus.changeLock();
      pushMatrix();
        //Translates the sketch so the baords corner is (0,0)
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
        
        menu.TShape(menu.getTColour());
        
        textSize(map(30, 0, 683, 0, width));
        textAlign(CENTER, CENTER);
        fill(#FF0000);
      popMatrix();
      text("PRESS ENTER", width / 2.0f, (height / 2.0f) + (height / 4.0f));
      
      /*
        Checks if enter was hit
      */
      
      if (gameStatus.enter == true)
      {
        background(#CADCF0);
        pushMatrix();
          //Translates the sketch so the baords corner is (0,0)
          translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
          menu.TShape(menu.getTColour());
        popMatrix();
        
        //Menu is created
        menu.createMenu();
      }//end if
      break;
    }//end case 3
    case 4:
    {
      color tColour;
      color gameColour;
     
      pushMatrix();
        //Translates the sketch so the baords corner is (0,0)
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
        
        if (frameCount <= 300)
        {
          //Lerps colours to frameCount to have a transition fade
          tColour = lerpColor(0, #FFFF00, ((1.0f / 300.0f) * frameCount));
          gameColour = lerpColor(0, #CADCF0, ((1.0f / 300.0f) * frameCount));
          background(gameColour);
          menu.TShape(tColour);
        }//end if
        else
        {
          //Changes game type and sets T shape colour
          menu.setTColour(#FFFF00);
          menu.setGameColour(#CADCF0);
          changeScreen = 3;
        }//end else
      popMatrix();
      break;
    }//end case 4 (Intro)
    //Case to highlight tetris
    case 5:
    {
      //System.out.println("GHEWJHFKLADFHLKAHFLAKSFCHASKLCSALKHCLAK");
      tetris();
      break;
    }//end case 5
    case 6:
    {
      background(#CADCF0);
      backBoard.defaultBackground();
      
      menu.leaderBoard();
      break;
    }//end case 6 (leaderbaord display)
  }//end switch
}//end draw

/*
  Method that loads data from the leaderboard file
  into an arraylist
*/

void loadFile()
{
  t = loadTable("leaderboard.csv", "header");
  
  //CLearing of data
  leaderBoard.clear();
  
  for (int i = 0; i < t.getRowCount(); i++)
  {
    Leaderboards rowFetch = new Leaderboards(t.getRow(i));
    leaderBoard.add(rowFetch);
  }//end for
}//end loadFile()

/*
  Method that pushes shapes down and swaps
  a shape into the cells array if it is marked as dead
*/

boolean generalDown()
{
  int boolCheck = 0;
  
  for (int i = 17; i >= 0; i--)
  {
    for (int j = 0; j < 10; j++)
    {
      for (int k = 0; k < liveShape.size(); k++)
      {
        if((int)cells[i][j].ordinates.x == (int)liveShape.get(k).xy.x && (int)cells[i][j].ordinates.y == (int)liveShape.get(k).xy.y)
        {
          if (i < 17)
          {
            if (cells[i + 1][j].active == false)
            {
              gameStatus.swapShapes();
              changeScreen = 0;
              
              if (list.size() > 0)
              {
                changeScreen = 5;
              }//end if
              
              return false;
            }//end if
          }//end if
        }//end if
      }//end for
    }//end for
  }//end for
  
  for (int i = 0; i < liveShape.size(); i++)
  {
    if (false == liveShape.get(i).boundaryCheck('d'))
    {
      boolCheck++;
    }//end if
  }//end for
  
  if (boolCheck == 0)
  {
    for (int i = 0; i < liveShape.size(); i++)
    {
      liveShape.get(i).down();
    }//end for
    return true;
  }//end if
  else
  {
    gameStatus.swapShapes();
    checkCells();
    return false;
  }//end else
}

void checkCells()
{
  int numLines = 0;
  list.clear();
  for (int i = 17; i >= 0; i--)
  {
    int check = 0;
    
    for (int j = 0; j < 10; j++)
    {
      if (cells[i][j].active == false)
      {
        check++;
      }//end if
    }//end for
    
    if(check == 10)
    {
      numLines++;
      list.add(i);
    }//end if
  }//end for
  
  if (numLines > 0 || list.size() > 0)
  {
    changeScreen = 5;
  }//end if
  else
  {
    changeScreen = 0;
  }//end else
  
  if (numLines == 4)
  {
    //stop();
  }//end if
  
  //System.out.println(list.size() + "HUSND");
  
  /*
    Shapes are drawn downwards
  */
  
  for (int i = 0; i < list.size(); i++)
  {
    for (int j = list.get(i); j > 0; j--)
    {
      for (int k = 0; k < 10; k++)
      {
        cells[j][k].cellCopy(cells[j - 1][k]);
      }//end for
    }//end for
  }//end for
}//end METHOD
/*
  Method to animate Tetris
*/

void tetris()
{
  long saveFrame;
  //Saves frame rate
  
   pushMatrix();
    
    //Translates the sketch so the boards edge is (0,0)
    translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
    if (frameChange == true)
    {
      gameStatus.setTetris();
      saveFrame = gameStatus.getTetris() + 60;
      frameChange = false;
    }//end if
    
    saveFrame = gameStatus.getTetris() + 60;
    
    if (saveFrame != frameCount)
    {
      for (int i = 0; i < list.size(); i++)
      {
        if (frameCount % 3 == 0)
        {
          fill(0);
          rect(0, cells[list.get(i)][0].ordinates.y, ((height - map(50, 0, 384, 0, height)) / 18.0f) * 10, ((height - map(50, 0, 384, 0, height)) / 18.0f));
        }//end if
        else
        {
          fill(255);
          rect(0, cells[list.get(i)][0].ordinates.y, ((height - map(50, 0, 384, 0, height)) / 18.0f) * 10, ((height - map(50, 0, 384, 0, height)) / 18.0f));
        }//end else
      }//end for
    }//end if
    else
    {
      changeScreen = 0;
      frameChange = true;
      list.clear();
    }
    
   popMatrix();
}//end METHOF tetris()