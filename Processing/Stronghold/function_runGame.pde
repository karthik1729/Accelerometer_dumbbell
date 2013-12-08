// #### Main game logic, looped as long as game runs

void runGame() { 
  image(stronghold_bg, 0, 0);
  
  drawHealthBar(10, 10, castlehealth);

  knight1.display(); 
  knight2.display();
<<<<<<< HEAD
=======
  sync1.display();
>>>>>>> a6ce7441a97315854ed641f464f73c0843fb2cb4
     
  for (int i = 0; i < skeletons.length; i++) {
    skeletons[i].display();
    skeletons[i].move();
  }
  
  for (int i = arrows.size()-1; i >= 0; i--) {
    Arrow arrow = arrows.get(i);
    arrow.display();
    arrow.move();
    
    if(arrow.finished()) {
      arrows.remove(i);
    } 
  }
  
  for (int i = repairbubbles.size()-1; i >= 0; i--) {
    RepairBubble repairbubble = repairbubbles.get(i);
    repairbubble.display();
    repairbubble.move();
    
    if(repairbubble.finished()) {
      repairbubbles.remove(i);
    } 
  }
      
      
  // ##### DUMBBELL INPUT #####
  
  //Load rep data from file
  lines = loadStrings("player1shoot.txt");
  reps_1s=Integer.parseInt(lines[0]);
  if (reps_1s>previous_reps_1s){
    knight1.shoot(1);
    previous_reps_1s=reps_1s;
    println(reps_1s);
  }
  
  lines = loadStrings("player2shoot.txt");
  reps_2s=Integer.parseInt(lines[0]);
  if (reps_2s>previous_reps_2s){
    knight2.shoot(2);
    previous_reps_2s=reps_2s;
    println(reps_2s);
  }
  
  lines = loadStrings("player1repair.txt");
  reps_1r=Integer.parseInt(lines[0]);
  if (reps_1r>previous_reps_1r){
    knight1.repair();
    previous_reps_1r=reps_1r;
    println(reps_1r);
  }
  
  lines = loadStrings("player2repair.txt");
  reps_2r=Integer.parseInt(lines[0]);
  if (reps_2r>previous_reps_2r){
    knight2.repair();
    previous_reps_2r=reps_2r;
    println(reps_2r);
  }
  
  
  
  // ##### KEYBOARD INPUT #####
  
  if(keyPressed) {
    // Shoot arrow from player 1 if key 'A' is pressed
    if (key == 'a' || key == 'A') {
<<<<<<< HEAD
      knight1.shoot(1);
=======
      if (sync1.peak()){
        knight1.shoot(1);
      }
>>>>>>> a6ce7441a97315854ed641f464f73c0843fb2cb4
    }
    
    // Shoot arrow from player 2 if key 'B' is pressed
    if (key == 'l' || key == 'L') {
      knight2.shoot(2);
    }
    
    // Castle repair from player 1 if key 'Q' is pressed
    if (key == 'q' || key == 'Q') {
      knight1.repair();
    }
    
    // Castle repair from player 2 if key 'O' is pressed
    if (key == 'o' || key == 'O') {
      knight2.repair();
    }
    
    // Pause game if Space bar key is pressed
    if (key == ' ') {
<<<<<<< HEAD
      Date d = new Date();
      long currentTime = d.getTime();
      if(currentTime > lastPause + waitPause) {
        lastPause = currentTime;
        mode = 'p';
      }
     }
=======
      mode = 'p';
    }
    
>>>>>>> a6ce7441a97315854ed641f464f73c0843fb2cb4
  }
}
