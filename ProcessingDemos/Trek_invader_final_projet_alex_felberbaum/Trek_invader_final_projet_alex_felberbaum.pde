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
float borgSize;


void setup() {
  size (500, 500);
  shipX=0;
  shipY=0;
  shipSize=0;

  for (int a = 0; a < 8; a++) {
    //used so does not collide with ship
    float x = random (0, width/4);
    float y= random (0, height/4);
    float x2 = random(500, width*.75);
    float y2 = random(500, height*.75);

    borgX[a]= random(x, x2);
    borgY[a]= random(y, y2);
  }
}
void draw() {
  background(0);
  LLC(250, 250, 50);
  for (int a = 0; a < 8; a++) {
    borgSphere(borgX[a], borgY[a], 20);

    borgX[a]=borgX[a]+1;

    if ((borgX[a]>=500)&&(borgY[a]<0)) {
      borgY[a]=borgY[a]+2;
      borgX[a]=borgX[a]+2;
    }
    if ((borgX[a]>=500)&&(borgY[a]>0)) {
      borgY[a]=borgY[a]-2;
      borgX[a]=borgX[a]-2;
    }
    if ((borgY[a]>=500)&&(borgX[a]<0)) {
      borgY[a]=borgY[a]+2;
      borgX[a]=borgX[a]+2;
    }

    if ((borgY[a]<=0)&&(borgX[a]>0)) {
      borgY[a]=borgY[a]+2;
      borgX[a]=borgX[a]-2;
    }
    //next
    if ((borgX[a]<=0)&&(borgY[a]<0)) {
      borgY[a]=borgY[a]+2;
      borgX[a]=borgX[a]+2;
    }
    if ((borgX[a]<=0)&&(borgY[a]>0)) {
      borgY[a]=borgY[a]-2;
      borgX[a]=borgX[a]+2;
    }
    if ((borgY[a]<=0)&&(borgX[a]<0)) {
      borgY[a]=borgY[a]+2;
      borgX[a]=borgX[a]+2;
    }
  
  if ((borgY[a]<0)&&(borgX[a]>0)) {
    borgY[a]=borgY[a]-2;
    borgX[a]=borgX[a]-2;
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



void mousePressed() {
  println(mouseX, mouseY);
}
