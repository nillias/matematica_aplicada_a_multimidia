void setup() {
  int x_anterior = 0;
  int y_anterior = 200;
  size(260,200);
  for (int mes = 1; mes <= 12; mes++) {
    int vendas = int(random(11));
    int x = mes * 20;
    int y = 200 - vendas * 10;
    if (mes == 1) {
      x_anterior = x;
      y_anterior = y;
    }
    
    line(x, y, x_anterior, y_anterior);
    x_anterior = x;
    y_anterior = y;
    println("Mes: " + mes + " / Vendas: " + vendas);
  }
}
