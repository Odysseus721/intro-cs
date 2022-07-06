/*
Final project- alex felberbaum
Trek-invader(the voyages of the star ship LLC) 
note: not to be confused with star trek( voyages of the starship enterprise)
7/6/22
*/
float shipX;
float shipY;
float shipSize;
 
void setup(){
size (500,500);
shipX=0;
shipY=0;
shipSize=0;

}
void draw(){
 background(0);
LLC(250,250,50);

}

void LLC(float shipX, float shipY, float shipSize){
fill(207);
//cargo bays and engineering(center of ship with warp core that holds it together)
rect(shipX-6.25,shipY+15,15,30);
//ship disc
circle(shipX, shipY, shipSize);
//nacels(parts of the ship that allow warp)
rect(shipX+15, shipY+30,10,50);
rect(shipX-25, shipY+30,10,50);
strokeWeight(2);
stroke(#D6D6D6);
//conectors
line(shipX+8,shipY+35, shipX+16, shipY+45);
line(shipX-7,shipY+35, shipX-15, shipY+45);
//bridge
fill(330);
circle(shipX,shipY,shipSize/3);




}

void mousePressed(){
println(mouseX, mouseY);

}
