import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String time;
  String location; // UI location
  String url; // for world time API
  String flag; // url for icon
  bool isDayTime;

  WorldTime({this.url, this.location, this.flag});

  Future<void> getTime() async {
    // make a request
    http.Response response = await http.get(Uri.https('worldtimeapi.org','/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    print(data);

    // get properties from json
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    String offset_min = data['utc_offset'].substring(4,6);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset), minutes: int.parse(offset_min)));

    // set time
    isDayTime = now.hour<20 && now.hour>5;
    time = DateFormat.jm().format(now);
  }
}