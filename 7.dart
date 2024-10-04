import 'dart:io';

void main() {
  // Solicita ao usuário que insira um número
  stdout.write('Digite um número inteiro: ');
  int? numero = int.tryParse(stdin.readLineSync()!);

  // Verifica se o número é válido
  if (numero == null || numero < 0) {
    print('Por favor, digite um número inteiro não negativo.');
    return;
  }

  // Calcula o fatorial
  int fatorial = calcularFatorial(numero);

  // Imprime o resultado
  print('O fatorial de $numero é $fatorial.');
}

int calcularFatorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    int resultado = 1;
    for (int i = 2; i <= n; i++) {
      resultado *= i;
    }
    return resultado;
  }
}
