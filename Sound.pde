class Sound
{
  Sound()
  {
  }//end CONSTRUCTOR
  
  /*
    Method that acts as a static method to play songs
  */
  
  void playSong(SoundFile song)
  {
    song.play();
  }//end METHTHOD playSong()
  
  /*
    Method that stops a passed song file
  */
  void stopSong(SoundFile song)
  {
    song.stop();
  }//end METHTHOD playSong()
}//end CLASS Sounds