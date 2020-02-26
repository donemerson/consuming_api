import 'package:consuming_api/services/geoip.service.dart';
import 'package:consuming_api/services/method.service.dart';
import 'package:consuming_api/services/placeholder.service.dart';
import 'package:consuming_api/services/user.service.dart';

/*
## Generate Nickname from uinames.com
*/
void generateNickname() async {
  try {
    var jsonPased = await getJSONData(source: "https://uinames.com/api/?ext");
    var user = User.fromJson(jsonPased);
    print(user);
  } catch (ex) {
    print('Exception: $ex');
  }
}

/*
## Geoip of user-agent public address from freegeoip.app
*/
void geoip() async {
  try {
    dynamic pasedJson = await getJSONData(
      source: "https://freegeoip.app/json/",
      headers: {
        'accept': 'application/json',
        'Content-type': 'application/json',
      },
    );
    var result = Geoip.fromJson(pasedJson);
    print(result);
  } catch (ex) {
    print('Exception: $ex');
  }
}

/*
## Consuming test json api from jsonplaceholder.
*/
void placeholder() async {
  try {
    List<dynamic> pasedJson = await getJSONData(
      source: 'https://jsonplaceholder.typicode.com/posts/',
      headers: {"Accept": "application/json"},
    );
    List<PlaceHolder> phs = new List<PlaceHolder>();
    pasedJson.forEach(
      (element) => phs.add(new PlaceHolder.fromJson(element)),
    );
    phs.forEach(
      (element) => print(element),
    );
  } catch (ex) {
    print('Exception: $ex');
  }
}
