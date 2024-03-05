class Background
{
  int xcoordinate;
  int ycoordinate;
  Background()
  {
  }
  void show()
  {
    background(112, 172, 198);
    noFill();
    strokeWeight(width*0.1);
    stroke(156, 227, 193);
    drawPolygon(width/2, height/2, height/3, 6);
    image(bulding[0], width*0.68, height*0.02, width/4, height/3);
    image(bulding[1], width*0.74, height*0.35, width/4, height/3);
    image(bulding[2], width*0.68, height*0.7, width/4, height/3);
    image(bulding[3], width*0.07, height*0.65, width/4, height/3);
    image(bulding[4], width*0.02, height*0.35, width/4, height/3.7);
    image(bulding[5], width*0.07, height*0.02, width/4, height/3.7);
    image(bulding[6], width*0.38, height*0.4, width/4, height/3.7);
    textAlign(CENTER);
    fill(#078B11);
    textSize(width*0.04);
    text("Score: " + myScore, width*0.6, height*0.97);
    text("Level: " + countLevel, width*0.4, height*0.97);
    for (int i = 0; i < life; i++)
    {
      if (life >= i)
          image(heart[i], width*(0.37+(i*0.1)), height*0.015, width/15, height/15);
     
    }
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
}
