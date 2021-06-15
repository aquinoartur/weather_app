class Climate {
  int? id;
  String? name;
  String? state;
  String? country;
  Data? data;

  Climate({required this.id, required this.name, required this.state, required this.country, required this.data});

   Climate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    state = json['state'];
    country = json['country'];
    data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['state'] = this.state;
    data['country'] = this.country;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {

  int? temperature;
  String? windDirection;
  double? windVelocity;
  double? humidity;
  String? condition;
  double? pressure;
  String? icon;
  int? sensation;
  String? date;

  Data(
      {required this.temperature,
        required this.windDirection,
        required this.windVelocity,
        required this.humidity,
        required this.condition,
        required this.pressure,
        required this.icon,
        required this.sensation,
        required this.date});

  Data.fromJson(Map<String, dynamic> json) {
    temperature = json['temperature'];
    windDirection = json['wind_direction'];
    windVelocity = json['wind_velocity']  + 0.0;
    humidity = json['humidity']  + 0.0;
    condition = json['condition'];
    pressure = json['pressure'] + 0.0;
    icon = json['icon'];
    sensation = json['sensation'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temperature'] = this.temperature;
    data['wind_direction'] = this.windDirection;
    data['wind_velocity'] = this.windVelocity;
    data['humidity'] = this.humidity;
    data['condition'] = this.condition;
    data['pressure'] = this.pressure;
    data['icon'] = this.icon;
    data['sensation'] = this.sensation;
    data['date'] = this.date;
    return data;
  }
}