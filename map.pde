void setup() {
  colorMode(HSB, 360, 100, 100);
  background(0, 100, 100);
}

void draw(){
  colorMode(HSB, 360, 100, 100);
  float x = map(mouseX, 0, 100, 0, 360);
  background(x, mouseY, 100);
}
