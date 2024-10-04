import 'dart:io';

void main() {
  print("Digite o 1 número inteiro:");
  int start = int.parse(stdin.readLineSync() ?? '0');
  print("Digite o 2 número inteiro:");
  int end = int.parse(stdin.readLineSync() ?? '0');
  print("Números:");

  for (int i = start + 1; i < end; i++) {
    print(i);
  }
  print('\n');
}
