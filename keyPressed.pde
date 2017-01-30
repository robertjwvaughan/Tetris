void keyPressed()
{
  /*
    If s is pressed, the shape will go down
  */
  if ((key == 's' || key == 'S'))
  {
    int boolCheck = 0;
    
    for (int i = 0; i < liveShape.size(); i++)
    {
      if (false == liveShape.get(i).boundaryCheck('d'))
      {
        boolCheck++;
      }//end if
    }//end for
    
    if (boolCheck == 0)
    {
      for (int i = 0; i < liveShape.size(); i++)
      {
        liveShape.get(i).down();
      }//end for
    }//end if
    else
    {
      gameStatus.swapShapes();
    }//end else
  }//end if
  
  /*
    If a is pressed, the shapes vectors head towards right
  */
  if ((key == 'a' || key == 'A'))
  {
    int boolCheck = 0;
    
    for (int i = 0; i < liveShape.size(); i++)
    {
      if (false == liveShape.get(i).boundaryCheck('l'))
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
      if (false == liveShape.get(i).boundaryCheck('r'))
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
    shape.rotateT();
  }//end if
}//end keyPressed