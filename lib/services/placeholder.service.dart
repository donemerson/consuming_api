class PlaceHolder {
  int userId;
  int id;
  String title;
  bool completed;

  PlaceHolder({this.userId, this.id, this.title, this.completed});
  factory PlaceHolder.fromJson(Map<String, dynamic> parsedJson) {
    return PlaceHolder(
      userId: parsedJson['userId'],
      id: parsedJson['id'],
      title: parsedJson['title'],
      completed: parsedJson['completed'] == false ? false : true,
    );
  }
  @override
  String toString() {
    var str = """
    userId: $userId
    id: $id
    title: $title
    completed: $completed
    """;
    return str;
  }
}

/*
# CODE FOR TEST
#
#  List<dynamic> pasedJson = await getJSONData(
#    source: 'https://jsonplaceholder.typicode.com/posts/',
#    headers: {"Accept": "application/json"},
#  );
#
#  List<PlaceHolder> phs = new List<PlaceHolder>();
#  for (dynamic d in pasedJson) {
#    phs.add(new PlaceHolder.fromJson(d));
#  }
#  phs.forEach(
#    (element) => print(element),
#  );
#
*/
