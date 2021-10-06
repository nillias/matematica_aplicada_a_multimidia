void setup() {
  size(570, 400);
  noStroke();
}

void draw() {
  float largura = width;
  float altura = height; 
  float mousex = mouseX;
  float escala = mousex/20;
  background(240);
  retangulo(escala, largura, altura);
  losangulo(escala, largura, altura);
  circulo(escala, largura, altura);
}

void retangulo(float escala, float largura, float altura) {
  fill(0, 156, 90);
  rect(largura/2-escala*20/2, altura/2-escala*14/2, escala*20, escala*14);
}

void losangulo(float escala, float largura, float altura) {
  fill(255, 190, 0);
  beginShape();
  vertex(largura/2., altura/2.-escala*14./2.+(escala*1.7));
  vertex(largura/2.+escala*20./2.-escala*1.7, altura/2.);
  vertex(largura/2., altura/2.+escala*14./2.-escala*1.7);
  vertex(largura/2.-escala*20./2.+escala*1.7, altura/2.);
  endShape();
}

void circulo(float escala, float largura, float altura) {
  fill(0, 39, 100);
  circle(largura/2., altura/2., escala*7.);
}
