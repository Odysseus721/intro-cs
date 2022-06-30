
 String welcome = "Hello, world!";//global variable;
int diameter= 300;
int x= 0; 
int t = 0;
void setup() {
  size(500,500);
  

 
  
  
  
}

void draw(){
  
  background(0);
    
  
  
 


  noStroke();
  circle(width/2, height/2,diameter);
  x= x +1;
  //triangle( width/2+x, height/2+x,diameter-250,-40,-30,+50);
  fill(#FFFFFF);
triangle(0,0,0,100, x+t, 50); 
t = t+1/4;
fill(#FF0303);

circle(width/2, height/2,diameter);

}
