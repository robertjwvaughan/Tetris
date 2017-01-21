void setup()
{
  fullScreen();
  //size(683, 384);
  //Square x = new Square((height - map(50, 0, 384, 0, height)) / 18.0f);
}//end setup

void draw()
{
  //10x18
  //System.out.println(mouseX + " " + mouseY);
  Board backBoard;
  
  if (frameCount == 1)
  {
    backBoard = new Board((height - map(50, 0, 384, 0, height)) / 18.0f);
  }//end if
}//end draw

void defaultBackground()
{
  noFill();
  float square = (height - map(50, 0, 384, 0, height)) / 18.0f;
  rectMode(CENTER);
  rect(width / 2.0f, height / 2.0f, square * 10.0f, height - map(50, 0, 384, 0, height));
  line(0, height / 2.0f, width, height / 2.0f);
  rectMode(CORNER);
  translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
  
  Shapes shape = new Shapes((height - map(50, 0, 384, 0, height)) / 18.0f);
  /*
  for (float i = 0; i < 18.0f; i+=1.0f)
  {
    rect(width / 2.0f, (25 + square * i) + (square / 2.0f), square, square);
  }//end for
  
  for (float i = 0; i < 10.0f; i+=1.0f)
  {
    rect((width / 2.0f - square * 5.0f + (square / 2.0f)) + square * i, (25 + square * i) + (square / 2.0f), square, square);
  }//end for
  */
}