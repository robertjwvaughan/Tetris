Board backBoard;
float xynodeNode[][][] = new float[2][18][10];
boolean checkNode[][] = new boolean[18][10];
Status gameStatus;
ArrayList<Shapes> liveShape = new ArrayList<Shapes>();


void setup()
{
  //fullScreen();
  size(683, 384);
  //Square x = new Square((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  backBoard = new Board((height - map(50, 0, 384, 0, height)) / 18.0f);
  gameStatus = new Status();
  
  backBoard.nodeDraw();
  
}//end setup

void draw()
{
  //10x18
  //System.out.println(mouseX + " " + mouseY);
  backBoard.defaultBackground();
  Shapes x = new Shapes((height - map(50, 0, 384, 0, height)) / 18.0f);
    pushMatrix();
    translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
    
    if (true == (gameStatus.gameState()))
    {
      x.drawSquare();
      gameStatus.changeState();
    }//end if
    
    popMatrix();
}//end draw

/*
void defaultBackground()
{
  noFill();
  float square = (height - map(50, 0, 384, 0, height)) / 18.0f;
  rectMode(CENTER);
  rect(width / 2.0f, height / 2.0f, square * 10.0f, height - map(50, 0, 384, 0, height));
  line(0, height / 2.0f, width, height / 2.0f);
  rectMode(CORNER);
  
  Shapes shape = new Shapes((height - map(50, 0, 384, 0, height)) / 18.0f);
  
  for (float i = 0; i < 18.0f; i+=1.0f)
  {
    rect(width / 2.0f, (25 + square * i) + (square / 2.0f), square, square);
  }//end for
  
  for (float i = 0; i < 10.0f; i+=1.0f)
  {
    rect((width / 2.0f - square * 5.0f + (square / 2.0f)) + square * i, (25 + square * i) + (square / 2.0f), square, square);
  }//end for
}
*/