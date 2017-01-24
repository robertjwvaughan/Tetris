public class Shapes extends Square
{
  float measure;
  
  Shapes(float sDimension)
  {
    super(sDimension);
  }
  
  Shapes(float sDimension, float x, float y)
  {
    super(sDimension, x, y);
    measure = sDimension;
    //System.out.println(sDimension);
    //shape(square, 0, 0);
  }
  
  void shapeI()
  {
    
    liveShape.add(new Square(measure, 3, 0));
    liveShape.get(0).drawSquare();
  }//end METHOD I
  
  void shapeS()
  {
    
  }
  
  void shapeJ()
  {
    
  }
  
  void shapeZ()
  {
    
  }
  
  void shapeL()
  {
    
  }
  
  void shapeT()
  {
    
  }
  
  void shapeO()
  {
    
  }
}