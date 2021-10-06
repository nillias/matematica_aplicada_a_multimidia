
int numeros[] = {8, 8, 3, 4, 5};

void setup(){
  println(mediana(numeros));
}

int mediana(int[] valores) { 
  valores = sort(valores);
  int resposta = valores[valores.length/2]; 
  return resposta;
}
