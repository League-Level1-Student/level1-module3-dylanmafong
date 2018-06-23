float upperPipeHeight =random(100, 400);
float x = 200;
float y = 10;
float BV = 0;
float gravity = 1;
float pipex = 10;
float pipey = 10;
float gap = 245;
boolean gameover=false;
void draw() {
  if (!gameover) {
    background(4, 4, 4); 
    pipex = pipex-15;
    fill(57, 155, 143);
    rect(pipex, 0, 100, upperPipeHeight);
    if (intersectsPipes()==true) {
      print("pipe");
      gameover=true;
    }
    fill(255, 116, 49);
    stroke(6, 236, 146);
    ellipse(x, y, 50, 50);
    y = y+BV;
    BV = gravity+BV;
    if (pipex<-100) {
      pipex=pipex+1000;
      upperPipeHeight =random(100, 400);
    }
    fill(57, 155, 143);
    rect(pipex, gap+upperPipeHeight, 100, 1000000000);
  }else{
    text("(game over)", 100,100);
    
  }
}
void setup() {
  size(700, 700);
}

void mousePressed() {
  BV = -15;
}
boolean intersectsPipes() { 
  if (y < upperPipeHeight && x > pipex && x < (pipex+100)) {
    return true;
  } else if (y>gap+upperPipeHeight && x > pipex && x < (pipex+100)) {
    return true;
  } else { 
    return false;
  }
}
