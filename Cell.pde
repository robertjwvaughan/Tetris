class Cell
{
  boolean active;
  PVector ordinates;
  Square square;
  float x, y;
  
  Cell()
  {
  }//end DEFAULT
  
  Cell(float x, float y)
  {
    this.x = x;
    this.y = y;
    ordinates = new PVector(x, y);
    active = true;
  }//end CONSTRUCTOR
  
  void drawSquare()
  {
    square.drawSquare();
  }//end METHOD drawSquare
}//end CLASS Cell