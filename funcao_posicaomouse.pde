int distancia1D(int A, int B) {
  int resposta;
  resposta = abs (B - A);
  return resposta;
}

void setup() {
  println(distancia1D(mouseX, 0),distancia1D(mouseY, 0));
}
