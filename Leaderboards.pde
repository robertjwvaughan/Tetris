class Leaderboards
{
  int pos;
  String name;
  int score;
  
  Leaderboards(TableRow row)
  {
    this.pos = row.getInt("Pos");
    this.name = row.getString("User");
    this.score = row.getInt("Score");
  }
}