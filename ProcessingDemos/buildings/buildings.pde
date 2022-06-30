float yOffset;
float X;
float Y;


boolean roof;
void setup(){
//outputs to the GUI: draws something
size(500,500);

//window3;
//window4;
//
X=random(0,500);
Y=random(300,200);
}

void teardrop(float xOffset, float yOffset){
push();
noStroke();
fill(#2B64FC);
translate( xOffset, yOffset );
circle(1,1,4);
scale(.1);
triangle(0,0,20,0,10,-20);



triangle(0,0,20,0,10,-20);
scale(.00005);
pop();
}

void draw(){
background(250);

fill(100,255,0);
yOffset=yOffset+2;
teardrop(0,yOffset+0);
teardrop(50,yOffset+10);
teardrop(100,yOffset+40);
teardrop(150,yOffset);
teardrop(200,yOffset+80);
teardrop(250,yOffset+90);
teardrop(300,yOffset+100);
teardrop(350,yOffset+70);
teardrop(400,yOffset);
teardrop(450,yOffset+30);
teardrop(500,yOffset+20);
teardrop(25,yOffset);
teardrop(75,yOffset+10);
teardrop(125,yOffset+40);
teardrop(175,yOffset+50);
teardrop(225,yOffset);
teardrop(275,yOffset+90);
teardrop(325,yOffset+100);
teardrop(375,yOffset);
teardrop(425,yOffset+60);
teardrop(475,yOffset+30);
teardrop(525,yOffset);
if (yOffset>=500){
  
yOffset=0;
}
building(X,Y);
}
void mousePressed(){
println(mouseX,mouseY);
}
void keyPressed(){

}
void building(float X,float Y){
push();
translate(X,Y);

fill(#64522A);
rect(-5,5,50,150);
fill(210);
square(7,25,5);
square(20,25,5);
square(33,25,5);
//floor 4
square(7,50,5);
square(20,50,5);
square(33,50,5);
//floor 3
square(7,75,5);
square(20,75,5);
square(33,75,5);
//floor 2
square(7,100,5);
square(20,100,5);
square(33,100,5);
//floor 1
square(7,125,5);
square(20,125,5);
square(33,125,5);

when (bridge is 
pop();
}
