float x = 100;
float y = 100;

void draw(){
background(255,255,255);
fill(0, 255, 45);
ellipse(x, y, 68, 25);
}
void setup(){
    size(400,400);
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
              if(y>0){
        
               y=y-10;   
            }//Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              if(y<height){
                  y=y+10;//Frog Y position goes down 
            }}
            else if(keyCode == RIGHT)
            {
              if(x<width){
                 x=x+10; //Frog X position goes right
            }}
            else if(keyCode == LEFT)
            {
                if(x>0){
                 x=x-10; //Frog X position goes left
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