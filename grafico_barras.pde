void setup() {
  size(260,400);
  for (int mes = 1; mes <= 12; mes++) {
    int vendas = int(random(11));
    int x = mes * 20;
    int y = 200 - vendas * 10;
    rect(x, y, 16, 200-y);
    println("Mes: " + mes + " / Vendas: " + vendas);
  }
}
