# finalproject
# Puppi Jump- the purpose of this project is to have a puppy be able to jump over obstacles.
  Puppi Jump is a game where you play as a puppy and you control when it is supposed to jump over obstacles. The goal of the game is to deafeat as many obstacles as you can. If there is a chance where you hit an obstacle, the game will restart and you will begin dodging obstacles again. The game also scores you for how far you go and will reset everytime you hit an obstacle. The goal of this game is to get over as many obstacles as you can.

### Difficulties or opportunities you encountered along the way.

The toughest part was attempting to detect the object hitting the obstacle and making it say you loose. Another difficult aspect was creating the pillar obstacle and getting it to move. Also adding in the multiple changing colors of the Pillar to make it pop. 

### Most interesting piece of your code and explanation for what it does.

```Java
  public void show2() {
    noStroke();  
    int R =(int)(Math.random( )*200);
    int G =(int)(Math.random( )*200);
    int B =(int)(Math.random( )*200);
    fill(R,G,B);
    rect(x2, y2, 60, 100);
    x2-=xspeed;
    if(x2<-60){
      x2=width+30;
      //xspeed=(int)(Math.random()*3)+1;
      xspeed=4;
    }
  }
```
This is the code that moves the obstacle, which is a rectangle from right to left. It is able to reset to the other side of the screen as well. The colors on the pillar interchange between colors in the R, G and B int variables.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Mikayla Chunh & Jenna Fox** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
