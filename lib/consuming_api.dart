import 'package:consuming_api/services/geoip.service.dart';
import 'package:consuming_api/services/method.service.dart';
import 'package:consuming_api/services/placeholder.service.dart';
import 'package:consuming_api/services/user.service.dart';

/*
## Generate Nickname from uinames.com
*/
void generateNickname() async {
  var jsonPased;
  List<User> users = List<User>();
  jsonPased = await getJSONData(source: "https://uinames.com/api/?ext");
  users.add(User.fromJson(jsonPased));
  print(users[0].toString());
}

/*
## Geoip of user-agent public address from freegeoip.app
*/
void geoip() async {
  dynamic pasedJson = await getJSONData(
    source: "https://freegeoip.app/json/",
    headers: {
      'accept': 'application/json',
      'Content-type': 'application/json',
    },
  );
  var gip = Geoip.fromJson(pasedJson);
  print(gip.toString());
}

/*
## Consuming test json api from jsonplaceholder.
*/
void placeholder() async {
  List<dynamic> pasedJson = await getJSONData(
    source: 'https://jsonplaceholder.typicode.com/posts/',
    headers: {"Accept": "application/json"},
  );

  List<PlaceHolder> phs = new List<PlaceHolder>();
  for (dynamic d in pasedJson) {
    phs.add(new PlaceHolder.fromJson(d));
  }
  phs.forEach(
    (element) => print(element),
  );
}
