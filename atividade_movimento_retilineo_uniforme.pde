float tAtual = 0;
float vAtual = 10;
float dAtual;

void setup() {
  //frameRate(1);
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
  dAtual = MRU(vAtual, tAtual);
  println(tAtual, dAtual);
  ellipse(dAtual, 300, 10, 10);
  tAtual += 1.0 / 60.0;
}

float MRU(float v, float t) {
  float d;
  d = v * t;
  return(d);
}
