import '../objects/birth-day.object.dart';
import '../objects/credit-card.object.dart';

class User {
  String _name;
  String _surname;
  String _gender;
  String _region;
  int _age;
  String _title;
  String _phone;
  Birthday _birthday;
  String _email;
  String _password;
  CreditCard _creditCard;
  String _photo;

  User({
    String name,
    String surname,
    String gender,
    String region,
    int age,
    String title,
    String phone,
    Birthday birthday,
    String email,
    String password,
    CreditCard creditCard,
    String photo,
  }) {
    this._name = name;
    this._surname = surname;
    this._gender = gender;
    this._region = region;
    this._age = age;
    this._title = title;
    this._phone = phone;
    this._birthday = birthday;
    this._email = email;
    this._password = password;
    this._creditCard = creditCard;
    this._photo = photo;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get surname => _surname;
  set surname(String surname) => _surname = surname;
  String get gender => _gender;
  set gender(String gender) => _gender = gender;
  String get region => _region;
  set region(String region) => _region = region;
  int get age => _age;
  set age(int age) => _age = age;
  String get title => _title;
  set title(String title) => _title = title;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  Birthday get birthday => _birthday;
  set birthday(Birthday birthday) => _birthday = birthday;
  String get email => _email;
  set email(String email) => _email = email;
  String get password => _password;
  set password(String password) => _password = password;
  CreditCard get creditCard => _creditCard;
  set creditCard(CreditCard creditCard) => _creditCard = creditCard;
  String get photo => _photo;
  set photo(String photo) => _photo = photo;

  User.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _surname = json['surname'];
    _gender = json['gender'];
    _region = json['region'];
    _age = json['age'];
    _title = json['title'];
    _phone = json['phone'];
    _birthday = json['birthday'] != null
        ? new Birthday.fromJson(json['birthday'])
        : null;
    _email = json['email'];
    _password = json['password'];
    _creditCard = json['credit_card'] != null
        ? new CreditCard.fromJson(json['credit_card'])
        : null;
    _photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['surname'] = this._surname;
    data['gender'] = this._gender;
    data['region'] = this._region;
    data['age'] = this._age;
    data['title'] = this._title;
    data['phone'] = this._phone;
    if (this._birthday != null) {
      data['birthday'] = this._birthday.toJson();
    }
    data['email'] = this._email;
    data['password'] = this._password;
    if (this._creditCard != null) {
      data['credit_card'] = this._creditCard.toJson();
    }
    data['photo'] = this._photo;
    return data;
  }

  @override
  String toString() {
    return """
    name = $_name
    surname = $_surname
    gender = $_gender
    region = $_region
    age = $_age
    title = $_title
    phone = $_phone
    birthday = ${_birthday.toString()}
    email = $_email
    password = $_password
    creditCard = \n${_creditCard.toString()}
    photo = $_photo
    """;
  }
}

/*
#
# CODE TEST
#
#  var jsonPased;
#  List<User> users = List<User>();
#  jsonPased = await getJSONData(source: "https://uinames.com/api/?ext");
#  users.add(User.fromJson(jsonPased));
#  print(users[0].toString());
*/
