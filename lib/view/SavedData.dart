import 'package:flutter/material.dart';

import '../Global Styles/TextFiles.dart';

class Saveddata extends StatefulWidget {
  const Saveddata({super.key});

  @override
  State<Saveddata> createState() => _SaveddataState();
}

class _SaveddataState extends State<Saveddata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
         children: [
           HeadingText(
             center: true,
             color: Colors.black,
             context: context,
             text: "This is where Saved Data Will Show"
           )
         ],
        ),
      ),
    );
  }
}
