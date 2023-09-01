import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamicapp/view/Home.dart';
import 'package:islamicapp/view/Qiblahcompass.dart';
import 'package:provider/provider.dart';

import 'controller/hadithController.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MultiProvider(providers: [


    ChangeNotifierProvider(create: (context)=> HadisDB()),
    // ChangeNotifierProvider(create: (context)=> HadisDB()),




  ],child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'IslamicApp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  mainPage()
      ),
    );
  }
}
