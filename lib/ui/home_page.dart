import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;
  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;
    if (_search == null) {
      String requestBest =
          "https://api.giphy.com/v1/gifs/trending?api_key=W8xOn4FIKiLXKcx6s2ewsmzO0HARBVeG&limit=20&rating=G";
      response = await http.get(requestBest);
    } else {
      String requestSearch =
          "https://api.giphy.com/v1/gifs/search?api_key=W8xOn4FIKiLXKcx6s2ewsmzO0HARBVeG&q=$_search&limit=20&offset=$_offset&rating=G&lang=en";
      response = await http.get(requestSearch);
    }
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
