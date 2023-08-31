

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modelclass/bukhari.dart';

class HadisDB extends ChangeNotifier {

  List<bukhari> dataa = [];
  List<dynamic> _jsonData = [];

  List<dynamic> get jsonData => _jsonData;

  Future<void> loadJsonData() async {
    try {
      var jsonString = await rootBundle.loadString('assets/sahih_bukhari.json');
      var jsonData = jsonDecode(jsonString);
      for (var map in jsonData) {
        dataa.add(bukhari.fromJson(map));

        notifyListeners();
      }
      // notifyListeners();

      print(dataa![0].name!);
    } catch (e) {
      print('Error loading JSON data: $e');
    }
  }
}