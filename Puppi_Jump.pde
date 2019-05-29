
PImage img;
int x=20;
int y=300;
float speed=1;
float velocity=0;
Pillar [] pl=new Pillar[5];


void setup() {
  size(800, 450);
  //img = loadImage("puppy.jpg");
  for (int i=0; i<pl.length; i++) {
    pl[i]=new Pillar();
  }
}


void draw() {
  background(17,182,288);
  rect(x, y, 100, 100);
  //image(img, 0, height/2, img.width/2, img.height/2);
   for (int i=0; i<pl.length; i++) {
    pl[i].show();
  }
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
