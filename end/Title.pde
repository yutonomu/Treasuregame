class Title {
  Title() {
    gameState = 0;
    files[0].loop(1, 0.4);
  }

  void drawTitle() {
    image(title, 0, 0, width, height);
    textAlign(CENTER);
    fill(#FA2B2B);
    textSize(width*0.15);
    text("TresureHunter", width/2, height*0.4);
    textAlign(CENTER);
    fill(0);
    textSize(width*0.03);
    text("Press the Enter to start the game!", width/2, height*0.5);
    text("/Operation instructions/", width/2, height*0.6);
    text("Take the randomly displayed treasure chest before the pirates!\n→ is turn right,← is turn left,Spase steal the treasure chest!\nGameover if you make "+ life +  " mistakes", width/2, height*0.7);
  }

  void drawScore() {
    textAlign(CENTER);
    textSize(width*0.05);
    fill(#078B11);
    text("BestScore:"+myBestScore, width/2, height*0.97);
  }
  void btBgm() {
    files[1].loop(1, 0.4);
    files[4].play();
  }
  void loseBgm() {
    files[5].loop(1, 0.4);
  }
}
