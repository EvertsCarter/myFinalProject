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
  movePlayer1();
  movePlayer2();
  
  //Spawns in Circles
   for (int i=0; i<myCircles.size(); i++) {
    myCircles.get(i).display();
  }
  
  
 
}



//Makes opponents paddle
void makeRect1(){
  fill(31, 210, 226);
   rect(xPos1, yPos1, 200, 35);
   
   if(keyCode=='D' ){
    xPos1+=15;
  }else if(keyCode=='A'){
    xPos1-=15;
  } 
}

//Makes players paddle
void makeRect2(){
  fill(230, 168, 63);
  rect(xPos2, yPos2, 200, 35);
  
  if(keyCode==RIGHT){
    xPos2+=5;
  } else if(keyCode==LEFT){
    xPos2-=5;
  }
}

//Allows player so move their paddle
void movePlayer1(){
  if(keyCode=='D' ){
    xPos1+=15;
  }else if(keyCode=='A'){
    xPos1-=15;
  } 
}


void movePlayer2(){
  if(keyCode==RIGHT){
    xPos2+=8;
  } else if(keyCode==LEFT){
    xPos2-=8;
  }

  }
  




//FIX SO THAT WHEN THE GAME STARTS, THE OPPONENT DROPS THE BALL
void mousePressed() {
  myCircles.add(new Circle());
}

class Circle {

  float x;
  float y;
  float xspeed=random(-3, 3);
  float yspeed=random(3);
  float velocity=.01;

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
    } else if(y>=yPos2-30 && y<=yPos2+10 && x>=xPos2 && x<=xPos2+100){
      yspeed--;
    }
  }

  
 

}
