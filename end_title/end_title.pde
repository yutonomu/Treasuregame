PImage title =new PImage();
import processing.sound.*;
SoundFile files[] = new SoundFile[2];
int gameState;
int myScore;
boolean btWavFlag = false;
boolean opWavFlag = false;
void setup() {
  size(960, 540);
  title = loadImage("sea.jpg");
  gameState = 0;
  files[0] = new SoundFile(this, "kouya-no-sakini.wav");
  files[1] = new SoundFile(this, "battle.wav");
  files[0].loop();
}

void draw() {
  background(0);
   switch(gameState) {
  case 0:
    drawTitle();
    drawScore();
    files[1].stop();
    if (opWavFlag)
      opBgm();
    opWavFlag = false;
    btWavFlag = true;
    break;
  case 1:
    files[0].stop();
    if (btWavFlag)
      btBgm();
    btWavFlag = false;
    opWavFlag = true;
    
    break;
  } 
}

void drawTitle() {
  image(title, 0, 0, width, height);
  textAlign(CENTER);
  fill(#FA2B2B);
  textSize(150);
  text("TresureHunter", width/2, height*0.4);
  textAlign(CENTER);
  fill(0);
  textSize(30);
  text("Press the Enter to start the game!", width/2, height*0.5);
  text("/Operation instructions/", width/2, height*0.6);
  text("Take the randomly displayed treasure chest before the pirates!\n→ is turn right,← is turn left,Enter steal the treasure chest!\nGameover if you make 3 mistakes", width/2, height*0.7);
}

void keyPressed() {
  switch(gameState) {
  case 0:
    if (key==ENTER) {
      gameState = 1;
    }
    break;
  case 1:
    if (key== ' ') {
      gameState = 0;
      break;
    }
  }
}
void drawScore() {
  textAlign(LEFT);
  textSize(50);
  fill(#078B11);
  text("BestScore:"+myScore, 0, height*0.1);
}

void btBgm() {
  files[1].loop();
}
void opBgm() {
  files[0].loop();
}

void a()
{

}
