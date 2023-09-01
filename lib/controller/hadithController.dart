

import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/modelclass/BookListModel.dart';

import '../modelclass/ChapterModel.dart';
import '../modelclass/bukhari.dart';

import 'package:http/http.dart' as http;

import '../modelclass/bukhariApi.dart';

class HadisDB extends ChangeNotifier {

  List<bukhari> dataa = [];



  List<dynamic> _jsonData = [];

  List<dynamic> get jsonData => _jsonData;

  sahih_bukhariApi? apidataa ;

  List<dynamic> _jsonDataa = [];

  List<dynamic> get jsonDataa => _jsonDataa;

  Future<void> loadJsonData() async {
    try {
      var jsonString = await rootBundle.loadString('assets/sahih_bukhari.json');
      var jsonData = jsonDecode(jsonString);
      for (var map in jsonData) {
        dataa.add(bukhari.fromJson(map));

        notifyListeners();
      }
      // notifyListeners();

      print('json file data is ${dataa![0].name!}');
    } catch (e) {
      print('Error loading JSON data: $e');
    }
  }
BooksList? BooksNames;
  // sahih_bukhariApi

  Future<void> loadJsonDataFromAPI() async {

    // try {
      // Replace the API URL with your actual API endpoint
      var apiUrl = 'https://www.hadithapi.com/public/api/hadiths?apiKey=\$2y\$10\$SzWdz0WEGQaEhf48dXiZtGp7GL9G1jEKE4Xy1zqZ150ClPwrTe';

      var response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        var jsonDataa = jsonDecode(response.body);

          apidataa=sahih_bukhariApi.fromJson(jsonDataa);
          notifyListeners();


        // notifyListeners();
        print('Api responce is ${apidataa!.hadiths.data[0].hadithUrdu}');
      } else {
        print('Failed to load Api data: ${response.statusCode}');
      }
    // } catch (e) {
    //   print('Error loading Api data: $e');
    // }
  }
  Future<void> FatchBooks() async {

    // try {
    // Replace the API URL with your actual API endpoint
    var apiUrl = 'https://www.hadithapi.com/api/books?apiKey=\$2y\$10\$SzWdz0WEGQaEhf48dXiZtGp7GL9G1jEKE4Xy1zqZ150ClPwrTe';

    var response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var jsonDataa = jsonDecode(response.body);

      BooksNames=BooksList.fromJson(jsonDataa);
      notifyListeners();


      // notifyListeners();
      print('Api book name  is ${BooksNames!.books![0].bookName}');
    } else {
      print('Failed to load Api data: ${response.statusCode}');
    }
    // } catch (e) {
    //   print('Error loading Api data: $e');
    // }
  }

void intonull(){
    ChapterNames =null;
    // BooksNames = null;
}

var isEnglish = true;
  void buttontogel(){
    if(isEnglish==true){
      isEnglish=false;
    }else isEnglish=true;
    notifyListeners();
  }

  ChapterList? ChapterNames;
  // sahih_bukhariApi
  Future<void> FatchChapter({String? bookslug}) async {

    // try {
    // Replace the API URL with your actual API endpoint
    var apiUrl = 'https://www.hadithapi.com/api/$bookslug/chapters?apiKey=\$2y\$10\$SzWdz0WEGQaEhf48dXiZtGp7GL9G1jEKE4Xy1zqZ150ClPwrTe';

    var response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var jsonDataa = jsonDecode(response.body);

      ChapterNames=ChapterList.fromJson(jsonDataa);
      notifyListeners();


      // notifyListeners();
      // print('Api Chapter name  is ${BooksNames!.books![0].bookName}');
      print('Api Chapter name  is ${ChapterNames!.chapters![0].bookSlug}');
    } else {
      print('Failed to load Api data: ${response.statusCode}');
    }
    // } catch (e) {
    //   print('Error loading Api data: $e');
    // }
  }








}