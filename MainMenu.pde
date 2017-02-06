class MainMenu
{
  int menuNum;
  float measure;
  ArrayList<Square> T = new ArrayList<Square>();
  float intro = 0;
  color tColour = 0;
  color gameColour = 0;
  
  /*
    Setter
  */
  void setTColour(color value)
  {
    tColour = value;
  }//end METHOD setColour
  
  /*
    Accessor
  */
  color getTColour()
  {
    return tColour;
  }//end METHOD setColour
  
  void setGameColour(color value)
  {
    gameColour = value;
  }//end METHOD setColour
  
  /*
    Accessor
  */
  color getGameColour()
  {
    return gameColour;
  }//end METHOD setColour
  
  MainMenu(float lengths)
  {
    measure = lengths;
    T.clear();
    
    for (int i = 0; i < 2; i++)
    {
      for (int j = 0; j < 10; j++)
      {
        T.add(new Square(measure, j, i, #FFFF00, 'N'));
      }
    }//end for
    T.add(new Square(measure, 0, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 1, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 4, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 5, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 8, 2, #FFFF00, 'N'));
    T.add(new Square(measure, 9, 2, #FFFF00, 'N'));
    
    for (int i = 3; i < 7; i++)
    {
      for (int j = 4; j < 6; j++)
      {
        T.add(new Square(measure, j, i, #FFFF00, 'N'));
      }//end nested for
    }//end for
  }//end CONSTRUCTOR
  
  /*
    Method to draw TShape
  */
  
  void TShape(color value)
  {
    for (int i = 0; i < T.size(); i++)
    {
      T.get(i).square.setFill(value);
      T.get(i).square.setStroke(value);
      T.get(i).drawSquare();
    }//end for
  }//end MEHTOD TShape()
}//end CLASS MainMenu