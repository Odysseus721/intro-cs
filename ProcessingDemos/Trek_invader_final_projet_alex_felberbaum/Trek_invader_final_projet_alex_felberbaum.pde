/*
Final project- alex felberbaum
 Trek-invader(the voyages of the star ship LLC)
 note: not to be confused with star trek( voyages of the starship enterprise)
 desc: a space shooter with 2 levels based on a federation-borg battle
 7/6/22
 */

//to control x,y, and size of borg
float borgX[]= new float[8];
float borgY[]= new float[8];
float borgSize;
//borg speed x/y
float borgXSpeed[]= new float[8];
float borgYSpeed[]= new float[8];

//to maintain kill count
int kC=0;
//time remaining
int timeRemaining=30;
int currentSec = second();
//to make rounds
int round=1;
//fromm multi-screen demo
String screen = "start";
void setup() {
  //size

  size (500, 500);
  ;
  

  //to set random x/y variables for the borg
  for (int a = 0; a < borgX.length; a++) {

    //used to spawn random borg
    float x = random (0, width/4);
    float y= random (0, height/4);
    float x2 = random(500, width*.75);
    float y2 = random(500, height*.75);
//to define array
    borgX[a]= random(x, x2);
    borgY[a]= random(y, y2);
    borgXSpeed[a]= random(-3, 3);
    borgYSpeed[a]= random(-5, 5);
  }
}
void draw() {
  //from multi-screen demo
  if (screen == "start") {
    startScreen();
  } else if (screen == "ingame") {
    gameScreen();
  } else if (screen == "ingame2Setup") {
    gameScreen2Setup();
  } else if (screen == "ingame2") {
    gameScreen2();
  } else if (screen == "gameOver") {
    gameOverScreen();
  } else if (screen == "gameReset") {
    resetGame();
  }
}

void LLC() {
  fill(207);
  //cargo bays and engineering(center of ship with warp core that holds it together)
  rect(250-6.25, 250+15, 15, 30);
  //ship disc
  circle(250, 250, 50);
  //nacels(parts of the ship that allow warp)
  rect(250+15, 250+30, 10, 50);
  rect(250-25, 250+30, 10, 50);
  strokeWeight(2);
  stroke(#D6D6D6);
  //conectors
  line(250+8, 250+35, 250+16, 250+45);
  line(250-7, 250+35, 250-15, 250+45);
  //bridge(highlighted by strokeweight for distinction)
  fill(330);
  circle(250, 250, 50/3);
}
//cube(second round enemy) originaly it was going to be the same but i made it faster(seen below)
void borgCube(float borgX, float borgY, float borgSize) {
  push();
  //still needed push pop so that it would not change stroke color of ship
  fill(0);
  stroke(#165505);
  square(borgX, borgY, borgSize);
  //side design
  
  line(borgX+10,borgY, borgX+10, borgY+20);
  line(borgX,borgY+10, borgX+20, borgY+10);
  pop();
}
//borg sphere(first round enemy)
void borgSphere(float borgX, float borgY, float borgSize) {
  push();
  stroke(000,120,000);
  circle(borgX, borgY, borgSize);
  pop();
  push();
  stroke(#197401);
  line(borgX-10, borgY, borgX+10, borgY);
  pop();
}


//to set firing command for photon torpedo
//note:i needed to assing in individualy becuase it was fireint in start and gameover page
void keyPressed() {
  if (key == 'f'&&screen=="ingame") {
    torpedo(); 
    for (int a = 0; a < 8; a++) {
      if (circleCircleCollisionCheck(mouseX, mouseY, 20, borgX[a], borgY[a], borgSize)) {
        kC=kC+1;
        borgX[a]=1000;
        borgY[a]=1000;
        borgXSpeed[a]=0;
        borgYSpeed[a]=0;
      }
    }
  }

//so that it works for round 2 as well 
if (key == 'f'&&screen=="ingame2") {
  torpedo();
  for (int a = 0; a < 8; a++) {
    if (circleCircleCollisionCheck(mouseX, mouseY, 20, borgX[a], borgY[a], borgSize)) {
      kC=kC+1;
      borgX[a]=1000;
      borgY[a]=1000;
      borgXSpeed[a]=0;
      borgYSpeed[a]=0;
    }
  }
}
}
//to make phonon torpedo
void torpedo() {
  push();
  stroke(#DE3207);
  line(250, 250, mouseX, mouseY);
  pop();
}



void mousePressed() {
  //from multi screen demo to create screens
  if (screen == "start") {
    screen = "ingame"; // If you click while on
    // the start screen, change to the game screen
  } else if (screen == "ingame") {
  } else if (screen == "ingame2") {
  } else if (screen == "gameOver") {
    resetGame();
  }
}

//this is so the game an register if the photon torpedo hit the borg ship(copied from the collision demos)
boolean circleCircleCollisionCheck(float x1, float y1, float d1, float x2, float y2, float d2) {
  float distance = dist(x1, y1, x2, y2);
  return (distance <= d1/2 + d2/2);
}
//screens
//start screen
void startScreen() {
  background(0);
  push();
  //title
  fill(#72C8F5);
  textSize(80);
  text("TREK-INVADER", 10, 100);
  pop();
  //charecter diolouge(needed to introduce mission)
  fill(#72C8F5);
  textSize(15);
  text("Incoming message:", 200, 220);
  text("Commander Spot: Welcome to the USS LLC Captain, our situation is urgent!", 20, 250);
  text(" A Borg Fleet is headed towards earth, but our fleet is in the gamma quadrant!", 10, 270);
  text("So, you must command the LLC, our best and strongest ship, to victory!", 25, 290);
  //intrucions 
  text("Hold 'f' to fire and aim by hovering your mouse over the target.", 50, 310);
  text("Now good luck, live long and prosper.",150, 330);
  text("Click anywhere to start.", 200, 350);
}
//game round 1 screen
void gameScreen() {
  background(0);
  //displays(originally were individualy but decided to put in one big push();/pop();)
  push();
  fill(255);
  //display verbal catagories
  push();
  textSize(12);
  //variable for kill count
  text("Ships Destroyed:", 30, 20);
  //to display "time remaining"
  text("Time Remaining:", 385, 20);
  //to display "round"
  text("Round:", 30, 470);
  pop();
  push();
  //to display current intager values under catagories of intigers
  textSize(20);
  text(kC, 60, 40);
  text(timeRemaining, 420, 40);
  text(round, 75, 470);
  pop();
  pop();
  // to draw ship 
  LLC();
  //for loop to introduce array
  for (int a = 0; a < 8; a++) {
    //to spawn borg sphere
    borgSphere(borgX[a], borgY[a], 20);

    borgX[a]=borgX[a]+borgXSpeed[a];
    borgY[a]=borgY[a]+borgYSpeed[a];
//to control bouncing off sides
    if (borgX[a]>=width) {
      borgXSpeed[a]= -abs(borgXSpeed[a]);
    }
    if (borgX[a]<=0) {
      borgXSpeed[a]= abs(borgXSpeed[a]);
    }
    if (borgY[a]>=height) {
      borgYSpeed[a]= -abs(borgYSpeed[a]);
    }
    if (borgY[a]<=0) {
      borgYSpeed[a]= abs(borgYSpeed[a]);
    }

//time control

    if (currentSec!= second()) {
      timeRemaining--;
      currentSec=second();
    }
    //to reset after loss (if you run out of time)
    if (currentSec<1) {
      screen="resetGame";
    }
    //to resume progress into round 2 of the game 
    if (kC==8) {
      screen="ingame2Setup";
      
    }
  }
}
//used to reset variabels for the start of round 2(had a little bit of difficulty here)
void gameScreen2Setup() {
  //change in round and reset time and other integer variables(originally above)
  round=2;
  timeRemaining+=30;
  kC=0;
  timeRemaining=30;
  timeRemaining--;
  for (int a = 0; a < borgX.length; a++) {

    //used to spawn random borg
    float x = random (0, width/4);
    float y= random (0, height/4);
    float x2 = random(500, width*.75);
    float y2 = random(500, height*.75);
    borgX[a]= random(x, x2);
    borgY[a]= random(y, y2);
    borgXSpeed[a]= random(-10, 10);
    borgYSpeed[a]= random(-7, 7);

  }
  //to swich screen to playable round 2 of the game
  screen="ingame2";
}
//playable round 2
void gameScreen2() {
  
  background(0);
  //displays(copied from above since it was starting new blank screen)
  push();
  fill(255);
  //displaying verbal catigories
  push();
  textSize(12);
  //catagory for kill count
  text("Ships Destroyed:", 30, 20);
  //to display "time remaining"
  text("Time Remaining:", 385, 20);
  //to display "round"
  text("Round:", 30, 470);
  pop();
  push();
  //to display current integer values
  textSize(20);
  text(kC, 60, 40);
  text(timeRemaining, 420, 40);
  text(round, 75, 470);
  pop();
  pop();
  //to draw ship
  LLC();
  //to reintroduce array
  for (int a = 0; a < 8; a++) {
    //to spawn borg cube
    borgCube(borgX[a], borgY[a], 20);
//to set borg cube speed
    borgX[a]=borgX[a]+borgXSpeed[a];
    borgY[a]=borgY[a]+borgYSpeed[a];
//to control bouncing off sides
    if (borgX[a]>=width) {
      borgXSpeed[a]= -abs(borgXSpeed[a]);
    }
    if (borgX[a]<=0) {
      borgXSpeed[a]= abs(borgXSpeed[a]);
    }
    if (borgY[a]>=height) {
      borgYSpeed[a]= -abs(borgYSpeed[a]);
    }
    if (borgY[a]<=0) {
      borgYSpeed[a]= abs(borgYSpeed[a]);
    }
//time control
    if (currentSec!= second()) {
      timeRemaining--;
      //to reset in the event of insufficent kills in the given time
      if (timeRemaining <1) {
        screen= "gameReset";
      }
      currentSec=second();
    }
    //to proceed to end screen
    if (kC==8) {
      screen="gameOver";
    }
  }
  //note: i had trouble especialy in the section above as i did not make the code to reset of all necessary variables correctly(it was eventualy corrected)
}
//to end game and notify the player of their sucess( with more time i would add a defeat screen, though i had already tried and it caused many bugs)
void gameOverScreen() {
  fill(#72C8F5);
  background(0);
  textSize(18);
  //one way charecter diaolouge to notify of sucess
  text("Commander Spot: congradulations, Captain, the borg are gone", 0, 250);
  text("click anywhere to restart", 100, 275);
}
//to reset the game
void resetGame() {
  //reseting x, y variables and array
  borgX= new float[8];
  borgY= new float[8];
  borgXSpeed= new float[8];
  borgYSpeed= new float[8];
  //resetting array
  for (int a = 0; a < borgX.length; a++) {

    //recreating x, y variables
    float x = random (0, width/4);
    float y= random (0, height/4);
    float x2 = random(500, width*.75);
    float y2 = random(500, height*.75);
//reacreating x,y variables for borg w/ array
    borgX[a]= random(x, x2);
    borgY[a]= random(y, y2);
    borgXSpeed[a]= random(-3, 3);
    borgYSpeed[a]= random(-5, 5);
  }  
  //to reset kill count
  kC=0;
  //to reset time remaining
  timeRemaining=30;
  currentSec = second();


  //to reset round
  round=1;
  //fromm multi-screen demo(to reset screen to start)
  screen = "start";
}
/*peer reveiw
 sammy:make message bigger{done}/ more visually intresting {done by adding design to borg)} /give less time{done}
 me: reset enemies to start positionsP{done}./ make new setup for ingame 2{done}
*/
