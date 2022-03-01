import 'dart:convert';

void main(List<String> arguments) {
  const jsonDataAsString = '''{
  "favoriteNumber": 73,
  "valueOfPi": 3.141592,
  "chocolate": true,
  "horoscope": "Cancer",
  "favoriteThings": ["monkeys", "parrots", "lattes"]
}''';

  Map<String, dynamic> jsonData =
      json.decode(jsonDataAsString) as Map<String, dynamic>;

  print(jsonData);
}
