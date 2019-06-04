//Varaibles
  ArrayList <Circle> myCircles=new ArrayList<Circle>();
  int xPos1 = 0;
  int yPos1 = 0;
  int xPos2 = 500;
  int yPos2 = 600;
  int x=25;
  int y=200;
  int mb1L= 700;
  int mb2L= 700;
  int mb1W= 25;
  int count=0;

  //Setup Background
public void setup() {
  size(1200, 700);
}

//Basically the runner class
public void draw(){
  //Sets up backgroud and paddles
  background(0, 0, 0);
  makeBoarders1();
  makeBoarders2();
  makeBoarders3();
  makeRect();
  
  //Displays score
  fill(255, 255, 255);
  text("SCORE: " + count, 1100, 25);
  
 //Allows for the paddles to move
  movePlayer();
  
  //Spawns in Circles
   for (int i=0; i<myCircles.size(); i++) {
    myCircles.get(i).display();
  }
}

//Makes boarders
public void makeBoarders1(){
  fill(31, 210, 226);
  rect(0, 0, 20, mb1L);   
}

public void makeBoarders2(){
  fill(31, 210, 226);
  rect(1180, 0, 50, 700);   
}

public void makeBoarders3(){
  fill(31, 210, 226);
  rect(xPos1, yPos1, 1200, 35);   
}

//Makes players paddle
public void makeRect(){
  fill(230, 168, 63);
  rect(xPos2, yPos2, 200, 35); 
}

//Allows player to move their paddle
public void movePlayer(){
  if(keyPressed){
     if(keyCode==RIGHT){
    xPos2+=20;
  } else if(keyCode==LEFT){
    xPos2-=20;
  } else if(keyCode==UP){
    yPos2-=20;
  } else if(keyCode==DOWN){
    yPos2+=20;
  }
  }
}

public void mousePressed() {
  myCircles.add(new Circle());
  count=0;
}

public class Circle {
  float x;
  float y;
  float xspeed=random(7, 15);
  float yspeed=random(7, 15);
  float velocity=.07;

//Sets the ball to spawn at mouse click
  Circle() {
    this.x=mouseX;
    this.y=mouseY;
  }

  void display() {
    fill(255, 255, 255);
    ellipse(x, y, 50, 50);
    xspeed+=velocity;
    yspeed+=velocity;
    x+=xspeed;
    y+=yspeed;
    if (x>1180 && y<mb1L) {
      xspeed+=velocity;
      xspeed*=-1;
      count++;
    } else if (x<25 && y<mb2L) {
      xspeed+=velocity;
      xspeed*=-1;
      count++;
    } else if(y>=yPos2-20 && y<=yPos2+10 && x>=xPos2 && x<=xPos2+200){
      yspeed+=velocity;
      yspeed*=-1;
    }else if(y<=yPos1+50 && y>=yPos1-10 && x>=xPos1 && x<=xPos1+1200){
      yspeed+=velocity;
      yspeed*=-1;
      count++;
    }else if(y>mb1L && y>mb2L){
      text("     YOU LOSE \n YOUR SCORE: " + count, 600, 350);
    }
  }
}
