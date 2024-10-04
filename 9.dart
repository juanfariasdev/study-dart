import 'dart:io';

void main() {
  List<double> numeros = [];

  // Solicita a entrada de 5 números
  for (int i = 0; i < 5; i++) {
    stdout.write('Digite o número ${i + 1}: ');
    double? numero = double.tryParse(stdin.readLineSync()!);

    // Verifica se o número é válido
    if (numero == null) {
      print('Por favor, digite um número válido.');
      i--; // Decrementa i para repetir a entrada
    } else {
      numeros.add(numero);
    }
  }

  // Calcula a soma
  double soma = numeros.reduce((a, b) => a + b);

  // Exibe a soma
  print('A soma dos números é: $soma');

  // Exibe os números digitados
  print('Números digitados:');
  for (var numero in numeros) {
    print(numero);
  }
}
