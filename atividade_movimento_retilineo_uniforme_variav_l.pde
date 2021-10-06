float tAtual = 0;
float vInicial = 10;
float aAtual = 1;
float dAtual;

void setup() {
  frameRate(1);
  size(600, 600);
  background(255);
  mostraMundo();
}

void mostraMundo() {
  for (int i = 0; i < 12; i++) {
    line(i * 50, 0, i * 50, 600);
    line(0, i * 50, 600, i * 50);
  }
}
void draw() { 
  dAtual = MRUV(vInicial, aAtual, tAtual);
  println(tAtual, dAtual);
  ellipse(300, 600-dAtual, 10, 10);
  tAtual++;
}

float MRUV(float v, float a, float t) {
  float d;
  d = v * t + a * t * t / 2.0;
  return(d);
}
