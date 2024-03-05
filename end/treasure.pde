class Treasure
{
  int xcoordinate;
  int ycoordinate;
  Treasure()
  {
    move();
    savedTime = millis();
  }
  void show()
  {
    image(treasure, xcoordinate, ycoordinate, width/9, height/4);
  }

  void move()
  {
    treasurelocate = (int)random(6);
    getlocate(treasurelocate);
  }

  void getlocate(int x)
  {
    if (x == 0)
    {
      xcoordinate = (int)(width*0.7);
      ycoordinate = (int)(height*0.05);
    } else if (x == 1)
    {
      xcoordinate = (int)(width*0.75);
      ycoordinate = (int)(height*0.35);
    } else if (x == 2)
    {
      xcoordinate = (int)(width*0.7);
      ycoordinate = (int)(height*0.65);
    } else if (x == 3)
    {
      xcoordinate = (int)(width*0.2);
      ycoordinate = (int)(height*0.65);
    } else if (x == 4)
    {
      xcoordinate = (int)(width*0.15);
      ycoordinate = (int)(height*0.35);
    } else if (x == 5)
    {
      xcoordinate = (int)(width*0.2);
      ycoordinate = (int)(height*0.05);
    }
  }
}
