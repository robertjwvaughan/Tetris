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
  
  /*
    Method that copies the properties of a cell
  */
  
  void cellCopy(Cell newCell)
  {
    this.active = newCell.active;
    this.ordinates.x = newCell.ordinates.x;
    this.ordinates.y = newCell.ordinates.y;
    this.x = newCell.x;
    this.y = newCell.y;
    
    square = getSquare(square, newCell.square);
  }//end METHOD cellCopy()
  
  Square getSquare(Square oldSquare, Square newSquare)
  {
    oldSquare.square = newSquare.square;
    oldSquare.xy.x = newSquare.xy.x;
    return (oldSquare);
  }//end MEHTHOD getSquare()
  /*
    Method that draws a cells stored square
  */
  
  void drawSquare()
  {
    square.drawSquare();
  }//end METHOD drawSquare
}//end CLASS Cell