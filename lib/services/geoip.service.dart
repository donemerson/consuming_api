class Geoip {
  String ip;
  String countryCode;
  String countryName;
  String regionCode;
  String regionName;
  String city;
  String zipCode;
  String timeZone;
  double latitude;
  double longitude;
  int metroCode;

  Geoip(
      {this.ip,
      this.countryCode,
      this.countryName,
      this.regionCode,
      this.regionName,
      this.city,
      this.zipCode,
      this.timeZone,
      this.latitude,
      this.longitude,
      this.metroCode});

  Geoip.fromJson(Map<String, dynamic> json) {
    ip = json['ip'];
    countryCode = json['country_code'];
    countryName = json['country_name'];
    regionCode = json['region_code'];
    regionName = json['region_name'];
    city = json['city'];
    zipCode = json['zip_code'];
    timeZone = json['time_zone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    metroCode = json['metro_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ip'] = this.ip;
    data['country_code'] = this.countryCode;
    data['country_name'] = this.countryName;
    data['region_code'] = this.regionCode;
    data['region_name'] = this.regionName;
    data['city'] = this.city;
    data['zip_code'] = this.zipCode;
    data['time_zone'] = this.timeZone;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['metro_code'] = this.metroCode;
    return data;
  }

  @override
  String toString() {
    return """
      IP = ${this.ip},
      CountryCode = ${this.countryCode}
      CountryName = ${this.countryName}
      RegionCode  = ${this.regionCode}
      RegionName = ${this.regionName}
      City = ${this.city}
      ZipCode = ${this.zipCode}
      TimeZone = ${this.timeZone}
      Latitude = ${this.latitude}
      Longitude = ${this.longitude}
      MetrocCode = ${this.metroCode}
    """;
  }
}

/*
# CODE FOR TEST
#
#  dynamic pasedJson = await getJSONData(
#    source: "https://freegeoip.app/json/",
#    headers: {
#      'accept': 'application/json',
#      'Content-type': 'application/json',
#    },
#  );
#  var gip = Geoip.fromJson(pasedJson);
#  print(gip.toString());
*/
