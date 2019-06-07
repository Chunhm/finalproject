class Pillar {
  private int x=20;
  private int y=300;
  private int x2;
  private int y2;
  private int xspeed=1;
  private int yspeed;
  private int size;


  public Pillar() {
    x=0;
    y=400;
    x2=-60;
    y2=300;
  }
  
  public void show() {
    noStroke(); 
    fill (10, 224, 10);
    rect(x, y, 800, 200);
    fill(255, 220, 0);
    ellipse(630, 100, 80, 80);
    fill(255, 255, 255);
    ellipse(170, 90, 80, 60);
    fill(255, 255, 255);
    ellipse(140, 120, 80, 60);
    fill(255, 255, 255);
    ellipse(200, 120, 80, 60);
    fill(255, 255, 255);
    ellipse(400, 110, 80, 60);
    fill(255, 255, 255);
    ellipse(370, 140, 80, 60);
    fill(255, 255, 255);
    ellipse(430, 140, 80, 60);
  }

  public void show2() {
    noStroke();  
    int R =(int)(Math.random( )*200);
    int G =(int)(Math.random( )*200);
    int B =(int)(Math.random( )*200);
    fill(R, G, B);
    rect(x2, y2, 60, 100);
    x2-=xspeed;
    if (x2<-60) {
      x2=width+30;
      //xspeed=(int)(Math.random()*3)+1;
      xspeed=4;
    }
  }
  
  public void showText() {
    textSize(100);
    fill(255, 0, 0);
    text("You Lose!", 160, 280);
  }
}
