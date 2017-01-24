void keyPressed()
{
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
  }//end if
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
}//end keyPressed