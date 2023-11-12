import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    getTime();
  }

  void getTime() async {
  var url = await Uri.parse('http://worldtimeapi.org/api/timezone/Europe/Zurich');
  http.Response response = await http.get(url);
  Map data = jsonDecode(response.body); // Corrected this line
  //print(data);

  //get properties from data
  String datetime = data['datetime'];
  String offset = data['utc_offset'].substring(1,3);
  //print(datetime);
  //print(offset);

  //create DateTime object

  DateTime now = DateTime.parse(datetime);
  now = now.add(Duration(hours: int.parse(offset)));
  print(now);


 


}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loading screen'),
      ),
    );
  }
}
