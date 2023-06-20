class emergencyAppointment {
  String id;
  String car;
  String description;
  double latitude;
  double longitude;
  int hour; // New field for hour component
  int minute;// New field for minute component
  String rateDescription;
  int rate;
  String state;
  bool done;

  // 30.0519305   latitude   37.4219983
  // 31.1871632   longitude   -122.084

  emergencyAppointment({this.id='',required this.car, required this.description,required this.latitude, required this.longitude,
    required this.hour, required this.minute, this.rateDescription='null', this.rate=0, this.state='pending',
    this.done=false});

  Map<String, dynamic>toJson(){
    return{
      "id": id,
      "car": car,
      "description": description,
      "latitude": latitude,
      "longitude": longitude,
      "hour":hour,
      "minute":minute,
      "rateDescription": rateDescription,
      "rate":rate,
      "state":state,
      "done":done

    };
  }

  emergencyAppointment.fromJson(Map <String, dynamic> json):this(
      id: json['id'],
      car: json['car'],
      description: json['description'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      hour: json['hour'],
      minute: json['minute'],
      rateDescription: json['rateDescription'],
      rate: json['rate'],
      state: json['state'],
      done: json['done']
  );
}
