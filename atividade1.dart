import 'dart:math';

void main() {
  
  //atvd1();
  //atvd2();
  //atvd3();
  //atvd4();
  //atvd5();
  //atvd6();
  //atvd7();
  atvd8();
  
}

void atvd1(){
  var n1 = 12;
  var n2 = 3;
  
  print('O resto da divisão entre n1 e n2 é ${n1 % n2}');
  print('A divisão inteira de n1 por n2 é ${n1 ~/ n2}');
  print('n1 elevado a n2 é ${pow(n1,n2)}');
  print('n1 é inteiro ?  ${n1 is int}');
  print('n2 é inteiro ?  ${n2 is int}');
}

void atvd2(){
  
  String dia = '12';
  String mes = '03';
  String ano = '2020';
  
  print('${dia}/${mes}/${ano}');
}

void atvd3(){
  print(r'O caractere de escape \t representa uma “tabulação”');
}

void atvd4(){
  double salario = 2500.0;
  double salario_1_ano = salario * 1.07;
  double salario_2_ano = salario_1_ano * 1.06;
  double salario_3_ano = salario_2_ano * 1.05;
  
  print('O salário atual é: ${salario}');
  print('Após 1 ano será: ${salario_1_ano}');
  print('Após 2 ano será: ${salario_2_ano}');
  print('Após 3 ano será: ${salario_3_ano}');
  
}

void atvd5(){
  var a = null;
  var b = 12;
  var res = a ?? b;
  print(res);
}

void atvd6(){
  double nota1 = 3;
  double nota2 = 7;
  double nota3 = 9;
  double media = (nota1 + nota2 + nota3) / 3;
  if (media >= 7){
    print("Aprovado");
  }else if(media < 4){
    print("Reprovado");
  }else if (media >= 4 && media < 7){
    print("Exame final");
  }
}


void atvd7(){
  int valor = 10;
  for (int i = 1; i <= valor; i++){
    print("${'.' * i}${i}");
  }
}

void atvd8(){
  var lista = [1,5,6,7];
  lista.forEach((value) => print(value * 2));
}

void exemplo_tratamento_de_null(){
  int? n1 = 10;
  var n2 = 3;
  int? n3 = null;
  n3 ??= n1;
  print(n3);
  n2 ?? print("n2 é nulo");
  
}
