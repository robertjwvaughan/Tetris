//#CC00FF - Pink (J)
//#FF6600 - Orange (I)
//#66CCFF - Turk (S)
//#FF0000 - Red (O)
//#0000FF - Blue (L)
//#00FF00 - Green (Z)
//#FFFF00 - Yellow (T)

//#CADCF0


Board backBoard;
float xyNode[][][] = new float[2][18][10];
boolean checkNode[][] = new boolean[18][10];
Status gameStatus;
ArrayList<Square> liveShape = new ArrayList<Square>();
Shapes shape;
int changeScreen;

void setup()
{
  //fullScreen();
  size(683, 384);
  //Square x = new Square((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  backBoard = new Board((height - map(50, 0, 384, 0, height)) / 18.0f);
  gameStatus = new Status();
  
  backBoard.nodeDraw();
  shape = new Shapes((height - map(50, 0, 384, 0, height)) / 18.0f, 1, 17);
  changeScreen = 0;
  
  background(#CADCF0);
}//end setup

void draw()
{
  switch(changeScreen)
  {
    case 0:
    {
      background(#CADCF0);
      //10x18
      //System.out.println(mouseX + " " + mouseY);
      backBoard.defaultBackground();
      pushMatrix();
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
        liveShape.clear();
        gameStatus.chooseShape();
      popMatrix();
      
      System.out.println(shape.xy.x +" "+ shape.xy.y);
      changeScreen = 1;
    }//end case 0
    case 1:
    {
      background(#CADCF0);
      
      backBoard.defaultBackground();
      pushMatrix();
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
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