Bacteria [] jenny;

void setup() {
  size(300,300);
  jenny = new Bacteria[100];
  for (int i = 0; i<jenny.length; i++){
    jenny[i] = new Bacteria();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < jenny.length; i++){
    jenny[i].move();
    jenny[i].show();
  }
}

class Bacteria {
  int myX, myY, myColor;
  Bacteria() {
    myX = (int) (Math.random()*300);
    myY = (int) (Math.random()*300);
  }
  void move () {
     myX = myX + (int) (Math.random()*3);
     myY = myY + (int) (Math.random()*3)-2;
  }
  void show () {
   fill(255,201,233);
   ellipse(myX,myY,40,40);
  }
}
