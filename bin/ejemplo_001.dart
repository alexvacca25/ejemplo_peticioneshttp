import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main() {
  peticioneshttp().then((respuesta) => print(respuesta)).catchError((e) {
  print(e.toString());
  });
}

Future<String> peticioneshttp() async {
// This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.parse('https://jsonplaceholder.typicode.com/album/1000');

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = response.body;
    //var itemCount = jsonResponse['totalItems'];
    //print('Resultado: $jsonResponse');
    return jsonResponse;
  } else {
    //print('Error: ${response.statusCode}.');
    return 'Error: ${response.statusCode}.';
  }
}
