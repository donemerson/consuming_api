class Birthday {
  String _dmy;
  String _mdy;
  int _raw;

  Birthday({String dmy, String mdy, int raw}) {
    this._dmy = dmy;
    this._mdy = mdy;
    this._raw = raw;
  }

  String get dmy => _dmy;
  set dmy(String dmy) => _dmy = dmy;
  String get mdy => _mdy;
  set mdy(String mdy) => _mdy = mdy;
  int get raw => _raw;
  set raw(int raw) => _raw = raw;

  Birthday.fromJson(Map<String, dynamic> json) {
    _dmy = json['dmy'];
    _mdy = json['mdy'];
    _raw = json['raw'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dmy'] = this._dmy;
    data['mdy'] = this._mdy;
    data['raw'] = this._raw;
    return data;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "dmy = $dmy";
  }
}
