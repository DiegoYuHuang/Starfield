Particle[] arr = new Particle[300];
void setup(){
  size(500,500);
  for (int i=0; i<10;i++){
    arr[i] = new Oddball();
  }
  for (int i=10; i<arr.length;i++){
    arr[i] = new Particle();
  }
}

void draw(){
  background(0);
  for (int i=0; i<arr.length;i++){
    arr[i].show();
    arr[i].move();
  }
}

class Particle
{
  double myX, myY;
  int myColor;
  double mySpeed, myAngle, mySize;  
  Particle() {
    myX = width/2;
    myY= height/2;
    myColor =  color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
    mySpeed = Math.random()*10 +1;
    myAngle = (Math.random()*3) * Math.PI;
    mySize = 10;
  }
  
  void move(){
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  
  }
}// end of Particle class

class Oddball extends Particle{
  Oddball(){
    myX = width/2;
    myY= height/2;
    myColor =  color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
    mySpeed = Math.random()*3;
    myAngle = (Math.random()*3) * Math.PI;
    mySize = 50;
  }
}
