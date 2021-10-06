PImage img;

void setup(){
  size(320, 240);
}

void draw(){
  img = loadImage("original.png");
  img.filter(INVERT);
  
  image(img, 0, 0);
}
