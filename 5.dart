// Escreva um programa que apresente a série de Fibonacci até o décimo quinto termo.
// A série de Fibonacci é formada pela sequência: 1,1,2,3,5,8,13,21,34,...etc. esta série se

// caracteriza pela soma de um termo atual com o seu anterior subsequente, para que seja
// formado o próximo valor da sequência.

// create in dart
void main() {
  int a = 1, b = 1, c;
  print("Série de Fibonacci até o décimo quinto termo: ");
  print(a);
  print(b);
  for (int i = 0; i < 13; i++) {
    c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
