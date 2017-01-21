class Board implements gameTrack
{
  public float square;
  
  Board()
  {
  }//end CONSTRUCTOR Board()
  
  Board(float sqaure)
  {
    this.square = square;
  }//end CONSTRUCTOR Board(float)
  
  void defaultBackground()
  {
    noFill();
    float square = (height - map(50, 0, 384, 0, height)) / 18.0f;
    rectMode(CENTER);
    rect(width / 2.0f, height / 2.0f, square * 10.0f, height - map(50, 0, 384, 0, height));
    line(0, height / 2.0f, width, height / 2.0f);
    rectMode(CORNER);
  }//end METHOD drawBackground()
  
  void nodeDraw()
  {
    
  }
}