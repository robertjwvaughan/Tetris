public class Square
{
  PShape square;
  PVector xy;
  float x;
  float y;
  
  Square(float lengths)
  {
    //float half = lengths / 2.0f;
    
    pushMatrix();
    //translate(-half, -half);
    
    square = createShape();
    square.beginShape();
    
    square.vertex(0.0f, 0.0f);
    square.vertex(0.0f, lengths);
    square.vertex(0.0f, lengths);
    square.vertex(lengths, lengths);
    square.vertex(lengths, 0.0f);
    
    square.endShape(CLOSE);
    popMatrix();
    
    x = 0.0f;
    y = 0.0f;
  }//end CONSTRUCTOR
  
  void drawSquare()
  {
    xy = new PVector(0, 0);
    shape(square, x, y);
  }//end drawSquare()
}//end CLASS Square