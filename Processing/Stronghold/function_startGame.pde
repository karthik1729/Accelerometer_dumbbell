// Called when game is started
void startGame() {
  // Draw background
  image(stronghold_bg, 0, 0);

  // Draw transparent black box over it
  fill(0, 0, 0, 200);
  noStroke();
  rect(0, 0, width, height);
  
<<<<<<< HEAD
  // Add pause screen image over it
  image(startscreen, 0, 0);
  
  
  if(keyPressed) {
    Date d = new Date();
    lastPause = d.getTime();
      if (key == ' ') {
        mode = 'r';
      }
  }
  //gameOn = true;
=======
  gameOn = true;
>>>>>>> a6ce7441a97315854ed641f464f73c0843fb2cb4
}
