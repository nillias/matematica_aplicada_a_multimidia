int numeros[] = {8, 4, 3, 4, 5};

void setup() {
  println(moda(numeros));
}

int moda(int[] valores) {
  int qtdModa = 0;
  int numModa = 0;
  int contador = 0;
  valores = sort(valores);
  for (int i = 0; i < (valores.length - 1); i++) {
    if (valores[i] == valores[i+1]) contador++;
    else
      contador = 0;
    if (contador > qtdModa) { 
      qtdModa = contador; 
      numModa = valores[i];
    }
  }
  return numModa;
}
