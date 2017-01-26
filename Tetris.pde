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

float xyNode[][][] = new float[2][18][10];//Grid co-ordinates
boolean checkNode[][] = new boolean[18][10];//Cell boolean check

int changeScreen;

int checkRotate;

void setup()
{
  //fullScreen();
  size(683, 384);
  //Square x = new Square((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  //Creates the board object
  backBoard = new Board((height - map(50, 0, 384, 0, height)) / 18.0f);
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
      
      pushMatrix();
        
        //Translates the sketch so the boards edge is (0,0)
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
        liveShape.clear();
        //gameStatus.chooseShape();
        shape.shapeZ();
      popMatrix();
      
      System.out.println(shape.xy.x +" "+ shape.xy.y);
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
        
        //Redraws the current shape after each frame
        for (int i = 0; i < liveShape.size(); i++)
        {
          liveShape.get(i).drawSquare();
        }//end for
        
      popMatrix();
      
      changeScreen = 1;
    }
    case 2:
    {
      
    }
  }//end switch
}//end draw