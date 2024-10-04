import 'dart:io';

void main() {
  print('----------------------------------------');
  print('Calculadora de Aumento de Salário');
  print('Cargo: Gerente, Engenheiro, Técnico ou Outros');
  print('----------------------------------------');
  print('Digite o cargo:');
  var cargo = stdin.readLineSync();
  if (cargo == null) {
    print('Cargo não informado.');
    return;
  }
  print('Digite o salário:');
  var valor = double.parse(stdin.readLineSync() ?? '0');
  cargo.toLowerCase();
  var oldValue = valor;

  switch (cargo) {
    case 'gerente':
      valor += valor * 0.1;
      break;
    case 'engenheiro':
      valor += valor * 0.2;
      break;
    case 'tecnico':
      valor += valor * 0.3;
      break;
    default:
      valor += valor * 0.4;
  }

  valor.toStringAsFixed(2);

  print(
      'Salário antigo: ${oldValue.toStringAsFixed(2)}\nCargo: $cargo\nAumento: ${cargo == 'Gerente' ? '10%' : cargo == 'Engenheiro' ? '20%' : cargo == 'Técnico' ? '30%' : '40%'}');
  print('Novo salário: $valor');
  print(
      'Diferença: ${(valor - (valor / (1 + (cargo == 'Gerente' ? 0.1 : cargo == 'Engenheiro' ? 0.2 : cargo == 'Técnico' ? 0.3 : 0.4)))).toStringAsFixed(2)}');
}
