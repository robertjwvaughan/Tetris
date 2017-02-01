class Board implements gameTrack
{
  float square;
  
  //Default constructor
  Board()
  {
  }//end CONSTRUCTOR Board(float)
  
  //Constructor that taks in a float which is
  //a squares lengths
  Board(float param)
  {
    square = param;
    //System.out.println(square);
  }//end CONSTRUCTOR Board(float)
  
  //Draws the default sketch of the background
  void defaultBackground()
  {
    noFill();
    //float square = (height - map(50, 0, 384, 0, height)) / 18.0f;
    //Makes the co-ordinates the rectangles center
    rectMode(CENTER);
    //Gameboard drawn
    rect(width / 2.0f, height / 2.0f, square * 10.0f, height - (map(50, 0, 384, 0, height)));
    rectMode(CORNER);
  }//end METHOD drawBackground()

  /*
    A method to initialise points on the grid
  */
  void nodeDraw()
  {
    for (int i = 0; i < 18; i+=1.f)
    {
      for (int j = 0; j < 10; j+=1.f)
      {
        //Cell is set to true for no square is on it
        cells[i][j] = new Cell(j * square, i * square);
        point(j * square, i * square);
      }//end for
    }//end for
  }//end METHOD nodeDraw()
}