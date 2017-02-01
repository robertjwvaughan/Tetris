class Cell
{
  boolean active;
  PVector ordinates;
  Square square;
  
  Cell()
  {
  }//end DEFAULT
  
  Cell(float x, float y)
  {
    ordinates = new PVector(x, y);
    active = true;
  }//end CONSTRUCTOR
  
  void drawSquare()
  {
    square.drawSquare();
  }//end METHOD drawSquare
}//end CLASS Cell