PImage treasure =new PImage();
int xcoordinate ;
int ycoordinate ;
int treasurelocate = 1;
int locate = 0;
int base_time = 0;
boolean stolenflag = false;

void setup()
{
  size(960, 540);
  treasure = loadImage("kaizoku_takara.png");
}

void draw()
{
  background(255);
  int time = millis() - base_time;
  if (time > 3000)
  {
    base_time = millis();
    stolenflag = true;
    println(stolenflag);
  }
  show();
}

int treasuremove()
{
  if (locate != treasurelocate)
  {
    loop();
  } else
    noLoop();
  return treasurelocate = (int)random(6);
}

void show()
{
  if(stolenflag)
    getlocate(treasuremove());
  image(treasure, xcoordinate, ycoordinate, width/9, height/4);
  if (keyCode == ENTER)
  {
    background(255);
  }
}

void getlocate(int x)
{
  if (x == 0)
  {
    xcoordinate = (int)(width*0.62);
    ycoordinate = (int)(height*0.05);
  } else if (x == 1)
  {
    xcoordinate = (int)(width*0.7);
    ycoordinate = (int)(height*0.35);
  } else if (x == 2)
  {
    xcoordinate = (int)(width*0.62);
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
