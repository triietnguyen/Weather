class Weather {
  String? icon;
  String? temp;
  String? main;
  String? location;
  String? description;
  String? date;
  String? feel;
  String? sunset;

  Weather(
      {this.icon,
      this.temp,
      this.main,
      this.location,
      this.description,
      this.date,
      this.feel,
      this.sunset});

  Weather.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    temp = json['temp'];
    main = json['main'];
    location = json['location'];
    description = json['description'];
    date = json['date'];
    feel = json['feel'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['temp'] = this.temp;
    data['main'] = this.main;
    data['location'] = this.location;
    data['description'] = this.description;
    data['date'] = this.date;
    data['feel'] = this.feel;
    data['sunset'] = this.sunset;
    return data;
  }
}
