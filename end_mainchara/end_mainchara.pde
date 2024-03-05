PImage[] mainchara =new PImage[4];
int xcoordinate ;
int ycoordinate ;
int locate = 0;
int treasurelocate=5;
boolean stolenflag = false;
void setup()
{
  size(960, 540);
  mainchara[0] = loadImage("walk_boy_stand.png");
  mainchara[1] = loadImage("walk_boy_stand_right.png");
  mainchara[2] = loadImage("banzai_kids_boy1.png");
  mainchara[3] = loadImage("cry_naku_boy.png");
  getlocate(0);
}

void draw()
{
//  background(255);
  show();
}

void keyPressed()
{
  if (keyCode == LEFT)
  {
    lmove();
  } else if (keyCode == RIGHT)
  {
    rmove();
  }
}

void show()
{
  if (keyCode == ENTER)
  {
    if (treasurelocate == locate)
      image(mainchara[2], xcoordinate, ycoordinate, width/9, height/4);
    else if (xcoordinate < width/2) {
      image(mainchara[0], xcoordinate, ycoordinate, width/9, height/4);
    } else if (xcoordinate > width/2)
      image(mainchara[1], xcoordinate, ycoordinate, width/9, height/4);
  } else if (stolenflag)
    image(mainchara[3], xcoordinate, ycoordinate, width/9, height/4);
  else if (xcoordinate < width/2)
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
