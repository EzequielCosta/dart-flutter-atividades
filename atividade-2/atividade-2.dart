import 'dart:math';

void main() {
  var potenciacaoArrowFunction =
      (int base, int expoente) => pow(base, expoente);

  print(soma_elementos_vetor([8, 3, 4]));
  print(multiplica_elementos_vetor([8, 3, 4]));
  print(executa_funcao([8, 3, 4], soma_elementos_vetor));
  print(potenciacao(2, 3));
  print(potenciacaoArrowFunction(2, 3));
}

num soma_elementos_vetor(List vetor) {
  num soma = 0;

  vetor.forEach((n) {
    soma += n;
  });

  return soma;
}

num multiplica_elementos_vetor(List vetor) {
  num multiplicacao = 1;

  vetor.forEach((n) {
    multiplicacao *= n;
  });

  return multiplicacao;
}

num executa_funcao(List vetor, num Function(List) operacao) {
  return operacao(vetor);
}

num potenciacao(int base, int expoente) {
  return pow(base, expoente);
}

void atvd5() {
  var a = null;
  var b = 12;
  var res = a ?? b;
  print(res);
}

void atvd6() {
  double nota1 = 3;
  double nota2 = 7;
  double nota3 = 9;
  double media = (nota1 + nota2 + nota3) / 3;
  if (media >= 7) {
    print("Aprovado");
  } else if (media < 4) {
    print("Reprovado");
  } else if (media >= 4 && media < 7) {
    print("Exame final");
  }
}

void atvd7() {
  int valor = 10;
  for (int i = 1; i <= valor; i++) {
    print("${'.' * i}${i}");
  }
}

void atvd8() {
  var lista = [1, 5, 6, 7];
  lista.forEach((value) => print(value * 2));
}

void exemplo_tratamento_de_null() {
  int? n1 = 10;
  var n2 = 3;
  int? n3 = null;
  n3 ??= n1;
  print(n3);
  n2 ?? print("n2 é nulo");
}
