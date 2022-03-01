import 'dart:async';
import 'dart:convert';
import 'dart:html';

Future<void> main() async {
  const path = 'https://harpia-inc-api.herokuapp.com/usuario';
  final httpRequest = HttpRequest();
  httpRequest
    ..open('GET', path)
    ..onLoadEnd.listen((e) => requestComplete(httpRequest))
    ..send('');
}

void requestComplete(HttpRequest request) {
  if (request.status == 200) {
    final response = request.responseText;
    if (response != null) {
      processResponse(response);
      return;
    }
  }

  print('Request failed, status=${request.status}');
}

void processResponse(String jsonString) {
  print("Usuários do Harpia\n");
  for (final usuario in json.decode(jsonString)) {
    print(usuario['nome']);
  }
}
