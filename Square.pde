public class Square
{
  PShape square;
  
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
  }//end CONSTRUCTOR
}//end CLASS Square