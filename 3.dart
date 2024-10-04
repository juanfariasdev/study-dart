import 'dart:io';

void main() async {
  double valorTotal = 0.0;

  print("Digite a quantidade de salgados:");
  int quantidadeSalgados = int.parse(stdin.readLineSync() ?? '0');

  print("Digite a quantidade de bebidas:");
  int quantidadeBebidas = int.parse(stdin.readLineSync() ?? '0');

  if (quantidadeSalgados > 0) {
    for (int i = 0; i < quantidadeSalgados; i++) {
      print("Digite o tipo de salgado:");
      String tipoSalgado = stdin.readLineSync() ?? '';
      if (tipoSalgado.isEmpty) {
        print("Tipo de salgado não informado.");
        return;
      }

      if (tipoSalgado == 'coxinha') {
        valorTotal += 4.5;
      } else if (tipoSalgado == 'joelho') {
        valorTotal += 5.5;
      } else if (tipoSalgado == 'pizza') {
        valorTotal += 6.0;
      } else {
        print("Tipo de salgado inválido.");
        return;
      }
    }
  }

  if (quantidadeBebidas > 0) {
    print("Digite o tipo de bebida:");
    String tipoBebida = stdin.readLineSync() ?? '';
    if (tipoBebida.isEmpty) {
      print("Tipo de bebida não informado.");
      return;
    }

    if (tipoBebida == 'agua') {
      valorTotal += 3.0;
    } else if (tipoBebida == 'refrigerante') {
      valorTotal += 4.5;
    } else if (tipoBebida == 'suco') {
      valorTotal += 5.5;
    } else {
      print("Tipo de bebida inválido.");
      return;
    }
  }
  if (valorTotal > 100.0) {
    valorTotal *= 0.9;
  }

  print("Valor total do pedido: R\$${valorTotal.toStringAsFixed(2)}");
}

void pedido() async {}
