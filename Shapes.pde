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
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
    liveShape.add(new Square(measure, 6, 0));
  }//end METHOD I
  
  void shapeS()
  {
    liveShape.add(new Square(measure, 3, 1));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
  }
  
  void shapeJ()
  {
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
    liveShape.add(new Square(measure, 5, 1));
  }
  
  void shapeZ()
  {
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 5, 1));
  }
  
  void shapeL()
  {
    liveShape.add(new Square(measure, 3, 1));
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 5, 0));
  }
  
  void shapeT()
  {
    liveShape.add(new Square(measure, 3, 0));
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 5, 0));    
  }
  
  void shapeO()
  {
    liveShape.add(new Square(measure, 4, 0));
    liveShape.add(new Square(measure, 4, 1));
    liveShape.add(new Square(measure, 5, 0));
    liveShape.add(new Square(measure, 5, 1));
  }
}