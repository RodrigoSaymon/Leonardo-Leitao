void main() {
  var nomes = ['eudes|34', 'rodrigo|35', 'cumpade|36'];

  for (var lista in nomes) {
    var dados = lista.split("|");
    var nome = dados[1];
    // print(dados);
    print(nome);
  }
}