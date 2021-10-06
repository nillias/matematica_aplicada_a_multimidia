void setup() {
  int sorteado, caras = 0, coroas = 0;
  for (int i = 0; i < 5; i++) {
    sorteado = (int(random(2)));
    if (sorteado == 0)
       caras++;
    
  }
  println("% Caras:", caras / 5.0 * 360);

}
