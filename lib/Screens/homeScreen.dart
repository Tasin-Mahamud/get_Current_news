import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_news/networking.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var ApiKey = '657704ed8ce34882b62d364206f76c93';
  Networking networking = Networking();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    networking.getNewsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
