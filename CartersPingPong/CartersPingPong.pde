//Varaibles
  ArrayList <Circle> myCircles=new ArrayList<Circle>();
  int xPos1 = 500;
  int yPos1 = 50;
  int xPos2 = 500;
  int yPos2 = 600;
  int x=25;
  int y=200;

  //Setup Background
void setup() {
  size(1200, 700);
}

//Basically the runner class
void draw(){
  //Sets up backgroud and paddles
  background(0, 0, 0);
  makeRect1();
  makeRect2();
  
 //Allows for the paddles to move
  keyTyped();
  

  
  //Spawns in Circles
   for (int i=0; i<myCircles.size(); i++) {
    myCircles.get(i).display();
  }
  
  
 
}



//Makes opponents paddle
void makeRect1(){
  fill(31, 210, 226);
   rect(xPos1, yPos1, 200, 35);
 
}

//Makes players paddle
void makeRect2(){
  fill(230, 168, 63);
  rect(xPos2, yPos2, 200, 35);
  
}

//Allows player so move their paddle
void keyTyped(){
  if(keyCode==RIGHT){
    xPos2+=8;
  } else if(keyCode==LEFT){
    xPos2-=8;
  }else if(keyCode=='D' ){
    xPos1+=8;
  }else if(keyCode=='A'){
    xPos1-=8;
  } 
  }
  

  




//FIX SO THAT WHEN THE GAME STARTS, THE OPPONENT DROPS THE BALL
void mousePressed() {
  myCircles.add(new Circle());
}

class Circle {

  float x;
  float y;
  float xspeed=random(-1, 3);
  float yspeed=random(0, 5);
  float velocity=.03;

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
    if (x>1180) {
      xspeed*=-1;
    } else if (x<25) {
      xspeed*=-1;
    } else if(y>=yPos2-20 && y<=yPos2+10 && x>=xPos2 && x<=xPos2+200){
      yspeed+=velocity;
      yspeed*=-1.33;
    }else if(y<yPos1+20 && y>=yPos1-10 && x>=xPos1 && x<=xPos1+200){
      yspeed+=velocity;
      yspeed*=-1.33;
    }
  }
}
