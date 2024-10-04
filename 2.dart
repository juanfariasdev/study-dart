import 'dart:io';

void main() {
  print("Digite um número inteiro:");
  try {
    int number = int.parse(stdin.readLineSync() ?? '0');
    if (number % 2 == 0) {
      if (number % 3 == 0) {
        print("Número par e divisível por 3");
      } else {
        print("Número par");
      }
    } else if (number % 3 == 0) {
      print("Número divisível por 3");
    } else {
      print("Número não é divisível por 3 nem par");
    }
  } on FormatException {
    print("Valor inválido. Digite um número inteiro.");
  }
}
