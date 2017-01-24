//Link list each square and adapt code to link list
//Create a method in Square that will adapt co-ordinates

Board backBoard;
float xyNode[][][] = new float[2][18][10];
boolean checkNode[][] = new boolean[18][10];
Status gameStatus;
ArrayList<Shapes> liveShape = new ArrayList<Shapes>();
Shapes x;

void setup()
{
  //fullScreen();
  size(683, 384);
  //Square x = new Square((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  backBoard = new Board((height - map(50, 0, 384, 0, height)) / 18.0f);
  gameStatus = new Status();
  
  backBoard.nodeDraw();
  x = new Shapes((height - map(50, 0, 384, 0, height)) / 18.0f);
}//end setup

void draw()
{
  background(#D3D3D3);
  //10x18
  //System.out.println(mouseX + " " + mouseY);
  backBoard.defaultBackground();
  pushMatrix();
    translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
    
    if (true == (gameStatus.gameState()))
    {
      x.drawSquare();
      gameStatus.changeState();
    }//end if
    x.drawSquare();
  popMatrix();
  
  System.out.println(x.xy.x +" "+ x.xy.y);
}//end draw