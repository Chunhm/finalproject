PImage img;
int x=20;
int y=300;
float speed=1;
float velocity=0;
Pillar [] pl=new Pillar[5];
Pillar [] obs=new Pillar[1]; 
Pillar pillar=new Pillar();
int wallBottomX;
int wallBottomY;
int wallBottomWidth=60;
int wallBottomHeight=100;


void setup() {
  size(800, 450);
  //img = loadImage("puppy.jpg");
  for (int i=0; i<pl.length; i++) {
    pl[i]=new Pillar();
  }
  for (int j=0; j<obs.length; j++) {
    obs[j]=new Pillar();
  }
}

void draw() {
  background(17, 182, 288);
  fill(255, 255, 255);
  rect(x, y, 50, 50);
  //image(img, 0, 0);
  for (int i=0; i<pl.length; i++) {
    pl[i].show();
    pl[i].show2();
    if ((x>wallBottomX) &&
      (x<wallBottomX+wallBottomWidth) &&
      (y>wallBottomY) &&
      (y<wallBottomY+wallBottomHeight)
      ) {
      pl[i].showText();
    }
    speed+=velocity;
    y+=speed;
    if (y>350) {
      y=350;
      speed=0;
    } else if (y<10) {
      velocity*=-1;
      speed*=-1;
    }
  }
}

void mousePressed() {
  speed-=2;
}

void keyPressed() {
  if (keyCode==UP) {
    speed-=2;
  }
}
