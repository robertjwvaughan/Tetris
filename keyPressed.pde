void keyPressed()
{
  /*
    If s is pressed, the shape will go down
  */
  if ((key == 's' || key == 'S'))
  {
    generalDown();
    gameStatus.downCheckZero();
  }//end if
  
  /*
    If a is pressed, the shapes vectors head towards right
  */
  if ((key == 'a' || key == 'A'))
  {
    int boolCheck = 0;
    
    for (int i = 0; i < liveShape.size(); i++)
    {
      if (false == liveShape.get(i).boundaryCheck('l') || false == liveShape.get(i).clashCheck(liveShape.get(i), -1))
      {
        boolCheck++;
      }//end if
    }//end for
    
    if (boolCheck == 0)
    {
      for (int i = 0; i < liveShape.size(); i++)
      {
        liveShape.get(i).left();
      }//end for
    }//end if
  }//end if
  
  /*
    If d is pressed, the shapes vectors head towards right
  */
  if ((key == 'd' || key == 'D'))
  {
    int boolCheck = 0;
    
    for (int i = 0; i < liveShape.size(); i++)
    {
      if (false == liveShape.get(i).boundaryCheck('r') || false == liveShape.get(i).clashCheck(liveShape.get(i), 1))
      {
        boolCheck++;
      }//end if
    }//end for
    
    if (boolCheck == 0)
    {
      for (int i = 0; i < liveShape.size(); i++)
      {
        liveShape.get(i).right();
      }//end for
    }//end if
  }//end if
  
  if ((key == 'w' || key == 'W'))
  {
    shape.rotateShape();
  }//end if
  
  if (keyCode == ' ')
  {
    while(false != generalDown());
  }
}//end keyPressed