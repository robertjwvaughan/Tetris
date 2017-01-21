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
    for (int i = 0; i < 18; i+=1)
    {
      for (int j = 0; i < 10; i+=1)
      {
        checkNode[i][j] = true;
      }
    }//end for
  }
}