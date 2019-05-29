
class Pillar {
  private int x;
  private int y;
  private int size;

  public Pillar() {
    x=500;
    y=200;
    size=150;
  }
  public void show() {
    noStroke(); 
    fill (255, 255, 255);
    rect(x, y, size, size);
  }
}
