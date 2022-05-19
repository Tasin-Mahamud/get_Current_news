import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Networking {
  var ApiKey = '657704ed8ce34882b62d364206f76c93';
  List titlelst = [];
  List urltoImglst = [];
  getNewsData() async {
    http.Response response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$ApiKey'));
    var data = response.body;
    for (int i = 1; i < 20; i++) {
      var title = await jsonDecode(data)['articles'][i]['title'];
      titlelst.add(title);
      print(title);
    }
    for (int i = 1; i < 20; i++) {
      var urltoimg = await jsonDecode(data)['articles'][i]['urlToImage'];
      urltoImglst.add(urltoimg);
      print(urltoimg);
    }
  }
}
