void setup()
{
  size(683, 384);
}//end setup

void draw()
{
  float widthHalf = width / 2.0f;
  float heightHalf = height / 2.0f;
  //10x18
  System.out.println(mouseX + " " + mouseY);
  
  defaultBackground();
}//end draw

void defaultBackground()
{
  noFill();
  float square = (height - 50) / 18.0f;
  rectMode(CENTER);
  rect(width / 2.0f, height / 2.0f, square * 10.0f, height - 50);
  line(0, height / 2.0f, width, height / 2.0f);
  
  for (float i = 0; i < 18.0f; i+=1.0f)
  {
    rect(width / 2.0f, (25 + square * i) + (square / 2.0f), square, square);
    rect(width / 2.0f - square * 5.0f + (square / 2.0f), (25 + square * i) + (square / 2.0f), square, square);
  }//end for
}