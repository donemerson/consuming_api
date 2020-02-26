import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> getJSONData(
    {String source, Map<String, String> headers}) async {
  var url = Uri.encodeFull(
    source,
  );
  var response = await http.get(url, headers: headers);
  dynamic jsonPassed = json.decode(
    response.body,
  );
  return jsonPassed;
}
