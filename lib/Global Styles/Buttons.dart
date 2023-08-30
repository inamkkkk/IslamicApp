import 'package:flutter/material.dart';

import '../Responsive/Responsiveclass.dart';
import 'TextFiles.dart';


Widget normalButton(context,text,Color? color){
  return Container(
    width:  responsiveDesign(243, context),
    height: responsiveHeight(60, context),
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    decoration: ShapeDecoration(
      color: Color(0xFF119475),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    child: Center(
      child: MediumText(
        text: '$text',
        context: context,
          color: color
      ),
    ),
  );
}