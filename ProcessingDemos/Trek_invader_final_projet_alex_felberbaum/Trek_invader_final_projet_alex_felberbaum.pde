/*
Final project- alex felberbaum
 Trek-invader(the voyages of the star ship LLC)
 note: not to be confused with star trek( voyages of the starship enterprise)
 7/6/22
 */
//controls x,y ,sizeof starhsip
float shipX;
float shipY;
float shipSize;
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
int timeRemaining=100;
int currentSec = second();
//health remaining(when fighting borg cube only)
int health;
//to make rounds
int round=1;
//fromm multi-screen demo
String screen = "start";
void setup() {
  //https://player.whooshkaa.com/episode?id=700255

  size (500, 500);
  shipX=0;
  shipY=0;
  shipSize=0;
  //to set time remaining
  timeRemaining=timeRemaining-second();
  if (kC==8) {
    round=2;
  }
  for (int a = 0; a < borgX.length; a++) {

    //used so does not collide with ship
    float x = random (0, width/4);
    float y= random (0, height/4);
    float x2 = random(500, width*.75);
    float y2 = random(500, height*.75);

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
  } else if (screen == "ingame2") {
    gameScreen2();
  } else if (screen == "gameOver") {
    gameOverScreen();
  } else if (screen == "gameReset") {
    resetGame();
  }
}

void LLC(float shipX, float shipY, float shipSize) {
  fill(207);
  //cargo bays and engineering(center of ship with warp core that holds it together)
  rect(shipX-6.25, shipY+15, 15, 30);
  //ship disc
  circle(shipX, shipY, shipSize);
  //nacels(parts of the ship that allow warp)
  rect(shipX+15, shipY+30, 10, 50);
  rect(shipX-25, shipY+30, 10, 50);
  strokeWeight(2);
  stroke(#D6D6D6);
  //conectors
  line(shipX+8, shipY+35, shipX+16, shipY+45);
  line(shipX-7, shipY+35, shipX-15, shipY+45);
  //bridge
  fill(330);
  circle(shipX, shipY, shipSize/3);
}
//cube
void borgCube(float borgX, float borgY, float borgSize) {
  fill(#165505);
  square(borgX, borgY, borgSize);
}
//borg s
void borgSphere(float borgX, float borgY, float borgSize) {
  circle(borgX, borgY, borgSize);
}


//to set firing command for photon torpedo
void keyPressed() {
  if (key == 'f') {
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
  println(mouseX, mouseY);
  //from multi screen demo
  if (screen == "start") {
    screen = "ingame"; // If you click while on
    // the start screen, change to the game screen
  } else if (screen == "ingame") {
  } else if (screen == "ingame2") {
  } else if (screen == "gameOver") {
    resetGame();
  }
}

//this is so the game an register if the photon torpedo hit the borg ship
boolean circleCircleCollisionCheck(float x1, float y1, float d1, float x2, float y2, float d2) {
  float distance = dist(x1, y1, x2, y2);
  return (distance <= d1/2 + d2/2);
}
//screens
void startScreen() {
  background(0);
  push();
  //title
  fill(#72C8F5);
  textSize(80);
  text("TREK-INVADER", 10, 100);
  pop();
  //charecter diolouge(needed to introduce mission)
  textSize(10);
  text("Commander Spot: Welcome to the USS LLC captain, our situation is urgent, many borg vessels are headed towards earth", 0, 250);
  text("And since the fleet is in the gamma quadrant you must command the LLC, our best and strongest ship, to victory.", 20, 265);
  text("Use 'f' to fire and aim by hovering your mouse over the target. to start just click anywhere.", 70, 280);
  text("Now good luck, live long and prosper.", 180, 295);
}

void gameScreen() {
  background(0);
  //displays(originally were individualy but decided to put in one big push();/pop();)
  push();
  fill(255);
  //display "kill count"(i was originaly going to have as float but decided to make intiger)
  push();
  textSize(12);
  text("Ships Destroyed:", 30, 20);
  //to display "time remaining"
  text("Time Remaining:", 385, 20);
  //to display "round"
  text("Round:", 30, 470);
  pop();
  push();
  //to display kill count
  textSize(20);
  text(kC, 60, 40);
  text(timeRemaining-second(), 420, 40);
  text(round, 75, 470);
  pop();
  pop();
  //ship
  LLC(250, 250, 50);
  for (int a = 0; a < 8; a++) {
    //to spawn borg sphere
    borgSphere(borgX[a], borgY[a], 20);

    borgX[a]=borgX[a]+borgXSpeed[a];
    borgY[a]=borgY[a]+borgYSpeed[a];

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



    if (currentSec!= second()) {
      timeRemaining--;
      if (timeRemaining <1) {
        screen= "game over";
      }
      currentSec=second();
    }
    //to reset after loss
    if (currentSec<1) {
      screen="resetGame";
    }
    //to change round(needed to be both in setup and here)
    if (kC==8) {
      round=2;
      screen="ingame2";
    }
  }
}
void gameScreen2() {
  timeRemaining=timeRemaining+30;
  timeRemaining=timeRemaining--;
  kC=0;
  background(0);
  //displays(originally were individualy but decided to put in one big push();/pop();)
  push();
  fill(255);
  //display "kill count"(i was originaly going to have as float but decided to make intiger)
  push();
  textSize(12);
  text("Ships Destroyed:", 30, 20);
  //to display "time remaining"
  text("Time Remaining:", 385, 20);
  //to display "round"
  text("Round:", 30, 470);
  pop();
  push();
  //to display kill count
  textSize(20);
  text(kC, 60, 40);
  text(timeRemaining-second(), 420, 40);
  text(round, 75, 470);
  pop();
  pop();
  //ship
  LLC(250, 250, 50);
  for (int a = 0; a < 8; a++) {
    //to spawn borg sphere
    borgCube(borgX[a], borgY[a], 20);

    borgX[a]=borgX[a]+borgXSpeed[a];
    borgY[a]=borgY[a]+borgYSpeed[a];

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



    if (currentSec!= second()) {
      timeRemaining--;
      if (timeRemaining <1) {
        screen= "game over";
      }
      currentSec=second();
    }
    //to change round(needed to be both in setup and here)
    if (kC==8) {
      screen="gameOver";
    }
  }
}

void gameOverScreen() {
  background(0);
  text("congradulations, captain, the borg are gone",200,250);
  text("click anywhere to restart",200,265);
}

void resetGame() {
  // Reset all your variables! Think of this like
  // a second setup() function
}
