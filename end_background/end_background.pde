PImage[] bulding =new PImage[7];
void setup()
{
  size(960,540);
  bulding[0] = loadImage("circus.png");
  bulding[1] = loadImage("gyojintou.png");
  bulding[2] = loadImage("kamabakka.png");
  bulding[3] = loadImage("oasis.png");
  bulding[4] = loadImage("haikyo.png");
  bulding[5] = loadImage("skyisland.jpg");
  bulding[6] = loadImage("kaizokusen.png");
}

void draw()
{
  background(112,172,198);
  noFill();
  strokeWeight(100);
  stroke(156,227,193);
  drawPolygon(width/2, height/2, height/3, 6);
  image(bulding[0], width*0.62,height*0.05,width/4,height/3);
  image(bulding[1],width*0.7,height*0.35,width/4,height/3);
  image(bulding[2],width*0.62,height*0.65,width/4,height/3);
  image(bulding[3],width*0.1,height*0.65,width/4,height/3);
  image(bulding[4],width*0.05,height*0.35,width/4,height/3.7);
  image(bulding[5],width*0.1,height*0.05, width/4, height/3.7);
  image(bulding[6],width*0.38,height*0.4, width/4, height/3.7);
}

void drawPolygon(int x, int y, int r, int vertexNum) {
  pushMatrix();
  translate(x, y);
  beginShape();
  for (int i = 0; i < vertexNum; i++) {
    vertex(r*cos(radians(360*i/vertexNum)), r*sin(radians(360*i/vertexNum)));
  }
  endShape(CLOSE);
  popMatrix();
}
