void setup() {
  size(260,200);
  for (int mes = 1; mes <= 12; mes++) {
    int vendas = int(random(11));
    int x = mes * 20;
    int y = 200 - vendas * 10;
    ellipse(x, y, 10, 10);
    println("Mes: " + mes + " / Vendas: " + vendas);
  }
}
