class CreditCard {
  String _expiration;
  String _number;
  int _pin;
  int _security;

  CreditCard({String expiration, String number, int pin, int security}) {
    this._expiration = expiration;
    this._number = number;
    this._pin = pin;
    this._security = security;
  }

  String get expiration => _expiration;
  set expiration(String expiration) => _expiration = expiration;
  String get number => _number;
  set number(String number) => _number = number;
  int get pin => _pin;
  set pin(int pin) => _pin = pin;
  int get security => _security;
  set security(int security) => _security = security;

  CreditCard.fromJson(Map<String, dynamic> json) {
    _expiration = json['expiration'];
    _number = json['number'];
    _pin = json['pin'];
    _security = json['security'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expiration'] = this._expiration;
    data['number'] = this._number;
    data['pin'] = this._pin;
    data['security'] = this._security;
    return data;
  }

  @override
  String toString() {
    return """
    --> expiration = $expiration
    --> number = $number
    --> pin = $pin
    --> security = $security
    """;
  }
}
