import processing.sound.*;  //音楽用
PImage[] mainchara =new PImage[4];  //主人公用
PImage[] bulding =new PImage[7];  //建物用
PImage treasure =new PImage();  //宝用
PImage[] enemy =new PImage[7];  //海賊用
PImage title =new PImage();  //タイトル画面用
PImage[] heart = new PImage[100];  //残機用
SoundFile files[] = new SoundFile[6];  //音楽用
int locate = 0;  //主人公のいる場所
int treasurelocate;  //宝がある場所
int savedTime;  //リスタートの時間
int limitTime= 3000;  //制限時間
int totalTime = limitTime+1000;  //停止用
int waitTime =1000;  //停止用
int gameState;   //タイトルとゲーム画面への移行用
int myBestScore=0;  //ベストスコア用
int myScore;  //ゲーム１回でとった点数
int life=3;  //残機
int finalLevel = 100;  //最終レベル
int[] level = new int[finalLevel];  //レベル
int countLevel=0;  //レベルを上げる用
boolean rockFlag = false;  //不正禁止用
boolean stolenFlag = false;  //宝物が盗まれたかどうか
boolean stolenWavFlag = true;  //stolenFlagの音楽版
boolean loseFlag = false;  //
boolean loseWavFlag = false;  //
boolean btWavFlag = false;
Mainchara main;
Title ti;
Treasure  tre;
Background back;
Enemy  ene;

void setup()
{
  size(960,540);
  mainchara[0] = loadImage("walk_boy_stand.png");
  mainchara[1] = loadImage("walk_boy_stand_right.png");
  mainchara[2] = loadImage("banzai_kids_boy1.png");
  bulding[0] = loadImage("circus.png");
  bulding[1] = loadImage("gyojintou.png");
  bulding[2] = loadImage("kamabakka.png");
  bulding[3] = loadImage("oasis.png");
  bulding[4] = loadImage("haikyo.png");
  bulding[5] = loadImage("skyisland.jpg");
  bulding[6] = loadImage("kaizokusen.png");
  enemy[0] = loadImage("luffy.png");
  enemy[1] = loadImage("jinbe.png");
  enemy[2] = loadImage("sanji.png");
  enemy[3] = loadImage("crocodile.png");
  enemy[4] = loadImage("zoro.png");
  enemy[5] = loadImage("enel.png");
  title = loadImage("sea.jpg");
  treasure = loadImage("kaizoku_takara.png");
  for (int i = 0; i < life; i++)
    heart[i] = loadImage("heart_curvy.png");
  files[0] = new SoundFile(this, "kouya-no-sakini.wav");
  files[1] = new SoundFile(this, "battle.wav");
  files[2] = new SoundFile(this, "yeah!.wav");
  files[3] = new SoundFile(this, "bomb.wav");
  files[4] = new SoundFile(this, "ou!.wav");
  files[5] = new SoundFile(this, "lose.wav");
  main = new Mainchara(life);
  tre = new Treasure();
  ti = new Title();
  ene = new Enemy(1);
  back = new Background();
}

void draw()
{
  switch(gameState) {
  case 0:
    ti.drawTitle();
    ti.drawScore();
    files[1].stop();
    if (loseWavFlag)
      ti.loseBgm();
    loseWavFlag = false;
    btWavFlag = true;
    break;
  case 1:
    files[0].stop();
    files[5].stop();
    if (btWavFlag)
      ti.btBgm();
    btWavFlag = false;
    loseWavFlag = true;
    show();
    int passedTime = millis() - savedTime;
    if (stolenFlag) {
      if (millis() - savedTime < waitTime) {
        show();
        if (stolenWavFlag)
          main.stolenWav();
        stolenWavFlag = false;
      } else {
        rockFlag = false;
        stolenWavFlag = true;
        tre.move();
        stolenFlag = false;
        //スコアが増えるにつれて敵のレベルが上がる
        if (myScore >= level[countLevel]) {
          countLevel++;
          limitTime -= 60;
        }
      }
    } else {
      if (passedTime > limitTime) {
        ene.show();
        if (stolenWavFlag)
        {
          ene.stolenWav();
          life--;
        }
        rockFlag = true;
        stolenWavFlag = false;
        if ( passedTime > totalTime) {
          if (!main.live())
          {
            if (myScore > myBestScore)
              myBestScore = myScore;
            myScore =0;
            countLevel = 0;
            gameState = 0;
            life = 3;
          }
          rockFlag = false;
          stolenWavFlag = true;
          tre.move();
          show();
          savedTime = millis();
        }
      }
    }
    break;
  }
}

void keyPressed() {
  if (!rockFlag) {
    if (keyCode == LEFT) {
      main.lmove();
    } else if (keyCode == RIGHT) {
      main.rmove();
    } else if (keyCode == ' ' && treasurelocate == locate && !rockFlag) {
      savedTime = millis();
      myScore += 10;
      stolenFlag = true;
      rockFlag = true;
    }
  }
  switch(gameState) {
  case 0:
    if (key==ENTER) {
      gameState = 1;
      savedTime = millis();
    }
    break;
  }
}
