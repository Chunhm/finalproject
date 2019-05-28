
int x=20;
int y=300;
float speed=1;
float velocity=0;


void setup() {
  size(800, 400);
}


void draw() {
  background(17,182,288);
  rect(x, y, 75, 75);
  speed+=velocity;
  y+=speed;

  if (y>300) {
    y=300;
    speed=0;
  } else if (y<10) {
    velocity*=-1;
    speed*=-1;
  }
}

void mousePressed() {
  speed-=12;
}

void keyPressed() {
  if(keyCode==UP){
     speed-=12;
  }
}
