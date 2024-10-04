import 'dart:io';

void main() {
  try {
    for (int i = 0; i < 10; i++) {
      print("Digite o 1 número inteiro:");
      int n1 = int.parse(stdin.readLineSync() ?? '0');
      print("Digite o 2 número inteiro:");
      int n2 = int.parse(stdin.readLineSync() ?? '0');
      print("Digite o 3 número inteiro:");
      int n3 = int.parse(stdin.readLineSync() ?? '0');

      List numeros = [n1, n2, n3];
      numeros.sort();
      print("Números ordenados: " + numeros.toString());
    }
  } catch (error) {
    print("Valor inválido. Digite um número inteiro.");
  }
}
