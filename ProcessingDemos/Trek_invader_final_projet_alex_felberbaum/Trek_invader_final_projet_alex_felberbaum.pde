/*
Final project- alex felberbaum
 Trek-invader(the voyages of the star ship LLC)
 note: not to be confused with star trek( voyages of the starship enterprise)
 7/6/22
 */
float shipX;
float shipY;
float shipSize;
float borgX[]= new float[8];
float borgY[]= new float[8];
float borgXSpeed[]= new float[8];
float borgYSpeed[]= new float[8];
float borgSize;
//borg speed x/y



void setup() {
  size (500, 500);
  shipX=0;
  shipY=0;
  shipSize=0;

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
  background(0);
  LLC(250, 250, 50);
  for (int a = 0; a < 8; a++) {
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
//small fighters
void borgCubeFighter(float borgX, float borgY, float borgSize) {
}
//borg s
void borgSphere(float borgX, float borgY, float borgSize) {
  circle(borgX, borgY, borgSize);
}

void borgSpecial(float borgX, float borgY, float borgSize) {
}

void borgBoss(float borgX, float borgY, float borgSize) {
}
//to set firing command for photon torpedo
void keyPressed() {
  if (key == 'f') torpedo();
  for (int a = 0; a < 8; a++) {
    rectangleCircleCollisionCheck(mouseX, mouseY, 1, 1, borgX[a], borgY[a], borgSize);
    if (true);
    println("boom");
  }
}


//to make phonon torpedo
void torpedo() {
  push();
  stroke(#DE3207);
  line(250, 250, mouseX, mouseY);
  rect( mouseX, mouseY, 1, 1);
  pop();
}



void mousePressed() {
  println(mouseX, mouseY);
}
//i put a rectangle hidden under mouse so that it could register as a circle rectangle collision.
boolean rectangleCircleCollisionCheck(float rx, float ry, float rw, float rh,
  float cx, float cy, float cd) {
    float testX = cx;
    float testY = cy;
    
    if(cx < rx) testX = rx;
    else if(cx > rx + rw) testX = rx + rw;
    if(cy < ry) testY = ry;
    else if(cy > ry + rh) testY = ry + rh;
    float dX = cx - testX;
    float dY = cy - testY;
    float distance = sqrt(dX*dX + dY*dY);
    return (distance < cd/2);
}
