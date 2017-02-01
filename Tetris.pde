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

//Array list to store objects of squares to create shapes
ArrayList<Square> liveShape = new ArrayList<Square>();
ArrayList<Leaderboards> leaderBoard = new ArrayList<Leaderboards>();

Cell cells[][] = new Cell[18][10];

int changeScreen;

int checkRotate;

Table t;

void setup()
{
  //fullScreen();
  size(683, 384);
  //Square x = new Square((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  //Creates the board object
  backBoard = new Board(((height - map(50, 0, 384, 0, height)) / 18.0f));
  gameStatus = new Status();
  
  //Creates co-ordinates for nodes
  backBoard.nodeDraw();
  shape = new Shapes((height - map(50, 0, 384, 0, height)) / 18.0f, 1, 17, (color)random(0,255));
  changeScreen = 0;
  
  background(#CADCF0);
}//end setup

void draw()
{ 
  
  //Switch statement to track
  switch(changeScreen)
  {
    //Case the creates a new shape to be drawn on screen
    case 0:
    { 
      background(#CADCF0);
      backBoard.defaultBackground();
      gameStatus.downCheckZero();
      
      pushMatrix();
        
        //Translates the sketch so the boards edge is (0,0)
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
        
        //backBoard.nodeDraw();
        liveShape.clear();
        gameStatus.chooseShape();
        
        for (int i = 17; i >= 0; i--)
        {
          for (int j = 0; j < 10; j++)
          {
            if (cells[i][j].active == false)
            {
              fill(0);
              cells[i][j].drawSquare();
            }
          }//end for
        }//end for
        
      popMatrix();
      
      //System.out.println(shape.xy.x +" "+ shape.xy.y);
      changeScreen = 1;
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
        
        //Redraws the current shape after each frame
        for (int i = 0; i < liveShape.size(); i++)
        {
          liveShape.get(i).drawSquare();
        }//end for
        
        for (int i = 17; i >= 0; i--)
        {
          for (int j = 0; j < 10; j++)
          {
            if (cells[i][j].active == false)
            {
              cells[i][j].drawSquare();
            }
          }//end for
        }//end for
        
        
      popMatrix();
      gameStatus.downCheckInc();
      gameStatus.downCheck();
    }
    case 2:
    {
      
    }//end case 2 
  }//end switch
}//end draw

void loadFile()
{
  t = loadTable("data.csv", "header");
  
  //CLearing of data
  leaderBoard.clear();
  
  for (int i = 0; i < t.getRowCount(); i++)
  {
    Leaderboards rowFetch = new Leaderboards(t.getRow(i));
    leaderBoard.add(rowFetch);
  }//end for
}//end loadFile()

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
    changeScreen = 0;
    return false;
  }//end else
}