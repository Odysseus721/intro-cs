


void setup() {
  size(500, 500);
 
}



void draw(){
background(50);
  for (int y = 275; y <= 475; y += 100) {
    for (int x = 100; x<width; x += (width-100)) {
      float r = random(0, 2);
        if (r<=1) {//huy
        float r2=random(0, 2);
          if (r2<= 1) {//chimney
          hut(x, y, 50, true);
        } else {//no chimney
          hut(x, y, 50, false);
        }
      } else {//shop
        int r3+int(random(1, 4));
          shop(x, y, 50, r3);
      }
    }
  }
}
