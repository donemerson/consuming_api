import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> getJSONData(
    {String source, Map<String, String> headers}) async {
  dynamic jsonPassed;
  var url = Uri.encodeFull(
    source,
  );
  var response = await http.get(url, headers: headers);
  if (response.statusCode == 200) {
    jsonPassed = json.decode(response.body);
  } else {
    throw Exception('Falied to load post');
  }
  return jsonPassed;
}
