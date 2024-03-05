class Mainchara
{
  int xcoordinate;
  int ycoordinate;

  Mainchara(int x)
  {
    life = x;
    getlocate(0);
  }

  void show()
  {
    if (stolenFlag)
    {
      image(mainchara[2], xcoordinate, ycoordinate, width/9, height/4);
    } else if (xcoordinate < width/2)
      image(mainchara[0], xcoordinate, ycoordinate, width/9, height/4);
    else if (xcoordinate > width/2)
      image(mainchara[1], xcoordinate, ycoordinate, width/9, height/4);
  }
  void rmove()
  {
    locate++;
    if (locate == 6)
      locate = 0;
    getlocate(locate);
  }

  void lmove()
  {
    locate--;
    if (locate == -1)
      locate = 5;
    getlocate(locate);
  }

  void stolenWav()
  {
    files[2].play();
  }

  boolean live() {
    if (life == 0)
      return false;
    return true;
  }

  void getlocate(int x)
  {
    if (x == 0)
    {
      xcoordinate = (int)(width*0.55);
      ycoordinate = (int)(height*0.05);
    } else if (x == 1)
    {
      xcoordinate = (int)(width*0.62);
      ycoordinate = (int)(height*0.35);
    } else if (x == 2)
    {
      xcoordinate = (int)(width*0.55);
      ycoordinate = (int)(height*0.65);
    } else if (x == 3)
    {
      xcoordinate = (int)(width*0.35);
      ycoordinate = (int)(height*0.65);
    } else if (x == 4)
    {
      xcoordinate = (int)(width*0.28);
      ycoordinate = (int)(height*0.35);
    } else if (x == 5)
    {
      xcoordinate = (int)(width*0.35);
      ycoordinate = (int)(height*0.05);
    }
  }
}
