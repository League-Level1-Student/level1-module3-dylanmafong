import ddf.minim.*;
PImage pictureOfRecord;
int a= 360;
Minim minim;
AudioPlayer song;
void setup(){
  minim = new Minim(this);  
  song = minim.loadFile("All Night Big Boi Lyrics.mp3", 512);
  pictureOfRecord = loadImage("ReCoRd.png");
  size(1000, 1000);
background(34, 43, 163);
} 
void draw(){
  rotateImage(pictureOfRecord, a);
if( mousePressed) {
  song.play();
  
a = a+100; 
} else{song.pause();}
  image(pictureOfRecord, 0, 0);
}
 void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);
}