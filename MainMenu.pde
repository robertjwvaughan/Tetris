class MainMenu
{
  int menuNum;
  float measure;
  ArrayList<Square> T = new ArrayList<Square>();
  float intro = 0;
  
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
    T.add(new Square(measure, 0, 3, #FFFF00, 'N'));
    T.add(new Square(measure, 1, 3, #FFFF00, 'N'));
    T.add(new Square(measure, 4, 3, #FFFF00, 'N'));
    T.add(new Square(measure, 5, 3, #FFFF00, 'N'));
    T.add(new Square(measure, 8, 3, #FFFF00, 'N'));
    T.add(new Square(measure, 9, 3, #FFFF00, 'N'));
    
    for (int i = 3; i < 7; i++)
    {
      for (int j = 4; j < 6; j++)
      {
        T.add(new Square(measure, j, i, #FFFF00, 'N'));
      }//end nested for
    }//end for
    /*
    for (int i = 0; i < T.size(); i++)
    {
      T.get(i).drawSquare();
    }//end for
    */
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
  
  /*
    Into for the program
  */
  void intro()
  {
    color tColour = 0;
    color gameColour = 0;
    
    /*
      Condition to lerp colour creating  fade-in
    */
    if (frameCount < 300)
    {
      if (intro > 1.0f)
      {
        TShape(#FFFF00);
        background(#CADCF0);
        changeScreen = 3;
      }//end if
      else
      {
        tColour = lerpColor(0, #FFFF00, intro);
        gameColour = lerpColor(0, #CADCF0, intro);
        intro += (1.0f / 300.0f);
      }
    }//end if
    
    if (intro > 1.0f)
    {
      gameStatus.changeLock();
      return;
    }//end if
    
    //Loop to draw intro shapes
    for (int i = 0; i < T.size(); i++)
    {
      pushMatrix();
        //Translates the sketch so the baords corner is (0,0)
        translate((width / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 5.f, (height / 2.0f) - ((height - map(50, 0, 384, 0, height)) / 18.0f) * 9.f);
        
        background(gameColour);
        T.get(i).square.setFill(tColour);
        T.get(i).square.setStroke(tColour);
        T.get(i).drawSquare();
        System.out.println(T.get(i).xy.x);
      popMatrix();
    }//end for
  }//end METHOD intro()
}//end CLASS MainMenu