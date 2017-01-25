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
  
  void indexCall(int index)
  {
    switch(index)
    {
      case 0:
      {
        shapeS();
        break;
      }//end CASE
      case 1:
      {
        shapeJ();
        break;
      }//end CASE
      case 2:
      {
        shapeI();
        break;
      }//end CASE
      case 3:
      {
        shapeZ();
        break;
      }//end CASE
      case 4:
      {
        shapeL();
        break;
      }//end CASE
      case 5:
      {
        shapeT();
        break;
      }//end CASE
      case 6:
      {
        shapeO();
        break;
      }//end CASE
    }//end switch
  }//end indexCall()
  
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
  
  void rotateShape()
  {
    switch(gameStatus.getShapeIndex())
    {
      case 0:
      {
        rotateS();
      }//end CASE
      case 1:
      {
        rotateJ();
      }//end CASE
      case 2:
      {
        rotateI();
      }//end CASE
      case 3:
      {
        rotatesZ();
      }//end CASE
      case 4:
      {
        rotateL();
      }//end CASE
      case 5:
      {
        rotateT();
      }//end CASE
      case 6:
      {
        rotateO();
      }//end CASE
    }//end switch
  }//end rotate
  
  void rotateI()
  {
    
  }
  
  void rotateS()
  {
    
  }
  
  void rotateJ()
  {
    
  }
  
  void rotatesZ()
  {
    
  }
  
  void rotateL()
  {
    
  }
  
  void rotateT()
  {
    
  }
  
  void rotateO()
  {
    
  }
}