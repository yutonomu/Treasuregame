class Enemy
{
  int xcoordinate;
  int ycoordinate;

  Enemy(int x)
  {
    for (int i=x; i<finalLevel; i++)
      level[i] = 30*i;
  }
  void show()
  {
    getlocate(treasurelocate);
    image(enemy[treasurelocate], xcoordinate, ycoordinate, width/9, height/4);
  }

  void stolenWav()
  {
    files[3].play();
  }


  void getlocate(int x)
  {
    if (x == 0)
    {
      xcoordinate = (int)(width*0.8);
      ycoordinate = (int)(height*0.05);
    } else if (x == 1)
    {
      xcoordinate = (int)(width*0.85);
      ycoordinate = (int)(height*0.35);
    } else if (x == 2)
    {
      xcoordinate = (int)(width*0.8);
      ycoordinate = (int)(height*0.65);
    } else if (x == 3)
    {
      xcoordinate = (int)(width*0.1);
      ycoordinate = (int)(height*0.65);
    } else if (x == 4)
    {
      xcoordinate = (int)(width*0.05);
      ycoordinate = (int)(height*0.35);
    } else if (x == 5)
    {
      xcoordinate = (int)(width*0.1);
      ycoordinate = (int)(height*0.05);
    }
  }
}
