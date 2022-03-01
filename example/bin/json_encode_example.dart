import 'dart:convert';

void main(List<String> args) {
  final Map<String, dynamic> array = {
    "nome": "Paulo Isaque",
    "idade": 20,
    "trabalha": true,
    "hobbies": ["ler", "programar", "escutar músicas"]
  };

  final array_encode = jsonEncode(array);
  print(array_encode);
}
