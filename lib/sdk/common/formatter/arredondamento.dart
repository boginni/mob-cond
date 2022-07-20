
int valor = 2;


double arredondaFracao(double x) {
  return double.parse(x.toStringAsFixed(valor + 2));
}

double arredondaPorcentagem(double x) {
  return double.parse(x.toStringAsFixed(valor));
}

double arredondarValor(double x) {
  return double.parse(x.toStringAsFixed(valor));
}

String arredondarValorStr(double x){
  return x.toStringAsFixed(2);
}