  //Varaibles
  ArrayList <Circle> myCircles=new ArrayList<Circle>();
  int xPos1 = 500;
  int yPos1 = 50;
  int xPos2 = 500;
  int yPos2 = 600;
  int speed=1;
  float velocity=.2;
  
  //Setup Background
void setup() {
  size(1200, 700);
}

//Basically the runner class
void draw(){
  background(0, 0, 0);
  makeRect1();
  makeRect2();
  keyPressed();
   for (int i=0; i<myCircles.size(); i++) {
    myCircles.get(i).display();
  }

}

//Makes opponents paddle
void makeRect1(){
  fill(31, 210, 226);
   rect(500, 50, 200, 35);
}

//Makes players paddle
void makeRect2(){
  fill(230, 168, 63);
  rect(xPos2, yPos2, 200, 35);
}

//Allows player so move their paddle
void keyPressed(){
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

  Circle() {
    this.x=mouseX;
    this.y=mouseY;
  }

  void display() {
    fill(255, 0, 0);
    ellipse(x, y, 50, 50);
    xspeed+=velocity;
    yspeed+=velocity;
    x+=xspeed;
    y+=yspeed;
    if (x>775) {
      xspeed*=-1;
    } else if (x<25) {
      xspeed*=-1;
    } else {
    }
  }
}
