import 'dart:io';

void main() {
  List<double> notas = [];

  // Lê as notas dos 10 alunos
  for (int i = 0; i < 10; i++) {
    stdout.write('Digite a nota do aluno ${i + 1}: ');
    double? nota = double.tryParse(stdin.readLineSync()!);

    // Verifica se a nota é válida
    while (nota == null || nota < 0 || nota > 10) {
      print('Por favor, insira uma nota válida (0 a 10).');
      stdout.write('Digite a nota do aluno ${i + 1}: ');
      nota = double.tryParse(stdin.readLineSync()!);
    }

    notas.add(nota);
  }

  // Calcula a maior nota
  double maiorNota = notas.reduce((a, b) => a > b ? a : b);

  // Imprime a maior nota
  print('A maior nota da sala é: $maiorNota');
}
