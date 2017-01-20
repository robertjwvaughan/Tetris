public class Shapes extends Square
{
  Shapes(float sDimension)
  {
    super(sDimension);
    System.out.println(sDimension);
    shape(square, 0, 0);
  }
}