float player1;
float player2;
float xSpeed;
float ySpeed;

int int_variable;

void setup() {
  size(500, 500);
  
  player1= width/2;
  player2 = height/2;
  xSpeed = random(-3, 3);
  ySpeed = random(-3, 3);
  
  
  
}

 void mousePressed(){
int_variable = int(random(1,4));
}

void draw() {
  background(255);

  fill(000);
     if(int_variable == 1) {
    text("rock",250,250);
  } else if(int_variable == 2) {
    text("paper",250,250);
  } else if(int_variable == 3) {
    text("scissors",250,250);
  }
  
  
}
