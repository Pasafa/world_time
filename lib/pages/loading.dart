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
    getData();
  }

  void getData() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  http.Response response = await http.get(url);
  Map data = jsonDecode(response.body); // Corrected this line
  print(data); // Optional: print the data to the console
  print(data['title']);
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
