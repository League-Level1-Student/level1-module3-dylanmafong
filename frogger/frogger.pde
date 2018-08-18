float x = 300;
float y = 500;
Car car1 = new Car (300,7,7,3);
Car  car2= new Car (82,56,6,2);
Car  car3= new Car (20,125,6,3);
Car  car4= new Car (90,190,7,4);
Car  car5= new Car (90,240,7,5);
Car  car6= new Car (90,300,7,2);
Car  car7= new Car (90,350,7,1);
Car  car8= new Car (90,400,7,9);
Car  car9= new Car (90,550,7,9);


void draw(){
background(255,255,255);
fill(0, 255, 45);
ellipse(x, y, 68, 25);
car1.display();
car2.display();
car1.goRight();
car2.goLeft();
car3.display();
car4.display();
car3.goRight();
car4.goLeft();
car5.display();
car6.display();
car5.goRight();
car6.goLeft();
car7.display();
car8.display();
car7.goRight();
car8.goLeft();
car9.display();
car9.goRight();
if(intersects(car1)){
  System.out.print("Game over");
  y=y+500;
 }
 if(intersects(car2)){
  System.out.print("Game over");
  y=y+400;
 }

if(intersects(car3)){
  System.out.print("Game over");
  y=y+350;
 }

if(intersects(car4)){
  System.out.print("Game over");
  y=y+300;
 }

if(intersects(car5)){
  System.out.print("Game over");
  y=y+250;
 }

if(intersects(car6)){
  System.out.print("Game over");
  y=y+200;
 }

if(intersects(car7)){
  System.out.print("Game over");
  y=y+150;
 }

if(intersects(car8)){
  System.out.print("Game over");
  y=y+100;
 }

if(intersects(car9)){
  System.out.print("Game over");
  y=y+500;
 }






}
void setup(){
    size(600,600);
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
              if(y>0){
        
               y=y-15;   
            }//Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              if(y<height){
                  y=y+15;//Frog Y position goes down 
            }}
            else if(keyCode == RIGHT)
            {
              if(x<width){
                 x=x+15; //Frog X position goes right
            }}
            else if(keyCode == LEFT)
            {
                if(x>0){
                 x=x-15; //Frog X position goes left
            }}
      }
}

class Car{
int x = 49;
int y = 49;
int speed = 100;
int size = 20;
Car(int x,int y, int size, int speed){
  this.x=x;
  this.y=y;
  this.size=size;
  this.speed=speed;
}
  void display() 
{
      fill(0,255,255);
      rect(x , y, size, 50);
}
void goLeft(){
  x=x-speed;
   if(x<0){
    x=600;
  }
}
void goRight(){
  x=x+speed;
  if(x>600){
    x=0;
  }
}
 int getX(){
 return x;
}
int getY(){
 return y;
  
  }
  int getSize(){
    return size;
 
  
}
  
}
boolean intersects(Car car) {
      if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+car.getSize()))
      {

             return true;
      }
      else 
      {
             return false;
      }









  }  