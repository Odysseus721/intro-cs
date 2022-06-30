int arthurMorgan;
float arthurSpeed;
float arthurX;
float arthurY;
void setup(){
size (500,500);
arthurX=250;
arthurY=250;
}

void draw(){
background(020,250,020);
//horse torso
fill(#BF701B);
arc(260,330,130,30,(40),(180));
//tail
arc(340,330,35,7,(40),(180));
//leg 1L
arc(290,350,12,40,(40),(180));
//leg 1R
arc(235,350,12,40,(40),(180));
//leg 2L
arc(290,380,8,20,(40),(180));
//leg 2R
arc(235,380,8,20,(40),(180));
//horse neck
push();
rect(180,320,35,20,100);
rotate(20);
pop();
//ear
arc(190,30,8,20,(4),(180));


push();
strokeWeight(3);
//arthur
fill(#F5C988);
circle(arthurX, arthurY, 30);
fill(#706FFF);
rect(arthurX-5, arthurY+14,10, 50);
//eyes arthur
point(243,247);
point(253,247);
//mouth arthur
line(243, 255,251,255);
//arms arthur
line(256,277,277,284);
line(245,277,225,284);
// left leg
line(255,313,260,321);
line(260,321,261,340);
push();
fill(#983B02);
arc(250,239,37,9,(40),(180));


rect(240,228,20,10,10);
pop();
pop();
}
void mousePressed(){
println(mouseX,mouseY);
}
