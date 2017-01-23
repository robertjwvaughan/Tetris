void keyPressed()
{
  if ((key == 's' || key == 'S'))
  {
    if (true == x.boundaryCheck('d'))
    {
      x.down();
    }
  }//end if
  if ((key == 'a' || key == 'A'))
  {
    if (true == x.boundaryCheck('l'))
    {
      x.left();
    }
  }//end if
  if ((key == 'd' || key == 'D'))
  {
    if (true == x.boundaryCheck('r'))
    {
      x.right();
    }
  }//end if
  
}//end keyPressed