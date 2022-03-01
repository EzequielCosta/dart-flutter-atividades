import 'package:http/http.dart' as http;

Future<void> main(List<String> args) async {
  var url = Uri.parse(
      'https://harpia-inc-api.herokuapp.com/usuario/alterar/61a954874f3da2409c352ae6');
  var response = await http.put(url, body: {'nome': 'Maria Clara'});
  print('Response status: ${response.statusCode}');

  print(await http.read(Uri.parse(
      'https://harpia-inc-api.herokuapp.com/usuario/61a954874f3da2409c352ae6')));
}
