interface trackStatus
{
  //ENsures data is reset
  void restartData();
  
  //Allows access to the games score
  int getScore();
  
  //Allows score to be added
  void addScore();
  
  //Increments multiplier
  void incMulti();
}//end INTERFACE trackStatus