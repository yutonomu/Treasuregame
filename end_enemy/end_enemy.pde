PImage[] enemy =new PImage[7];
int xcoordinate;
int ycoordinate;
int treasurelocate = 0;
int time;
int savedTime;
int totalTime1= 3000;
int totalTime2 = 4000;

class Enemy
{
  int xcoordinate;
  int ycoordinate;



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
void setup()
{
  Enemy ene;
  enemy[0] = loadImage("luffy.png");
  enemy[1] = loadImage("jinbe.png");
  enemy[2] = loadImage("sanji.png");
  enemy[3] = loadImage("crocodile.png");
  enemy[4] = loadImage("zoro.png");
  enemy[5] = loadImage("enel.png");
  size(960, 540);
  ene = new Enemy();
  savedTime = millis();
}

void draw()
{

 /* int passedTime = millis() - savedTime;
  if (passedTime > totalTime1)
  {*/
    show();
/*    if ( passedTime > totalTime2)
    {
      background(255);
      savedTime = millis();
    }
  }*/
}

  void show()
  {
    for (int i = 0; i < 6; i++)
    {
      getlocate(i);
      image(enemy[i], xcoordinate, ycoordinate, width/9, height/4);
    }
  }
void time()
{
  time = millis();
}

boolean wait(int t) {

  if (millis() - time > t) {
    time();
    return true;
  }
  return false;
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
