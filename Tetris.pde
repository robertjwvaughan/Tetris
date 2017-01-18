void setup()
{
  size(683, 384);
}//end setup

void draw()
{
  float widthHalf = width / 2.0f;
  float heightHalf = height / 2.0f;
  //10x18
  System.out.println(widthHalf + " " + heightHalf);
  
  defaultBackground();
}//end draw

void defaultBackground()
{
  rectMode(CENTER);
  rect(width / 2.0f, height / 2.0f, width - 10, height - 50);
}