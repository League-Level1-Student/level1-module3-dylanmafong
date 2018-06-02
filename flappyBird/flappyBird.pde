float x = 10;
float y = 10;
float BV = 30;
float gravity = 1;
float pipex = 10;
float pipey = 10;
void draw(){
  pipex = pipex-10;
fill(57, 155, 143);
rect(x, y, 100, 100);
  background(46, 4, 46); 
  fill(255, 116, 49);
  stroke(6, 236, 146);
  ellipse(x, y, 500, 500);
}
void setup(){
    size(500, 500);
}

void mousePressed(){
  y = y+BV;
}