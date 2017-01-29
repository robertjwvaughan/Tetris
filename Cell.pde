class Cell
{
  boolean active;
  PVector ordinates;
  Square x;
  
  Cell()
  {
  }//end DEFAULT
  
  Cell(float x, float y)
  {
    ordinates = new PVector(x, y);
  }//end CONSTRUCTOR
}//end CLASS Cell