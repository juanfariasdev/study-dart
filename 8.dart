void main() {
  // Inicializa uma lista com 5 posições
  List<int> lista = List.filled(5, 0);

  // Preenche a lista
  for (int i = 0; i < lista.length; i++) {
    if (i % 2 == 0) {
      lista[i] = 1; // Posição par
    } else {
      lista[i] = 0; // Posição ímpar
    }
  }

  // Imprime a lista
  print('A lista preenchida é: $lista');
}
