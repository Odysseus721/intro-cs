
float X;
float Y;
//for gradient effect
float r;
float g;
float b;

boolean roof;
void setup() {
gradient(220, 2,0,250,180,5 ) ;


 
  size(500, 500);

 
  X=random(0, 500);
  Y=random(300, 200);
}


void draw() {
  circle(180,40,20);
  //so i could fill the rect without effecting buildings
push();
noStroke();
fill(255, 100,0);
 rect(0,60, 500, 40);
pop();
//so i could take out any stroke around building
push();
noStroke();
building(X+120, Y);
building(X+170, Y);
building(X-170, Y);
building(X-300, Y);
building(X-10, Y);
building(X+120, Y);
building(X+170, Y);
building(X-170, Y);
building(X-300, Y);
building(X-10, Y);
pop();
}
void mousePressed() {
  println(mouseX, mouseY);
}
void keyPressed() {
}
void building(float X, float Y) {
  push();
  translate(X, Y);

  fill(#64522A);
  rect(-5, 5, 50, 150);
  fill(210);
  square(7, 25, 5);
  square(20, 25, 5);
  square(33, 25, 5);
  //floor 4
  square(7, 50, 5);
  square(20, 50, 5);
  square(33, 50, 5);
  //floor 3
  square(7, 75, 5);
  square(20, 75, 5);
  square(33, 75, 5);
  //floor 2
  square(7, 100, 5);
  square(20, 100, 5);
  square(33, 100, 5);
  //floor 1
  square(7, 125, 5);
  square(20, 125, 5);
  square(33, 125, 5);


  pop();
}
void gradient(float r1, float g1, float b1, 
              float r2, float g2, float b2) {
  for (int i = 0; i < height; i++ ) {
    r = map(i, 0, height-1, r1, r2);
    g = map(i, 0, height-1, g1, g2);
    b = map(i, 0, height-1, b1, b2);

    stroke(r, g, b);
    line(0, i, width, i);
  }
}
