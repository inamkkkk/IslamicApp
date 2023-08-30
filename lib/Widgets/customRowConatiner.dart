import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Responsive/Responsiveclass.dart';

class CustomRowContainer extends StatelessWidget {
  var contheight;
  var contwidth;
  var contColor;
  var svgImagePath;
  var svgheight;
  var svgwidth;
  var firstText;
  var firstTextsize;
  var firstTextcolor;
  var secondText;
  var secondTextsize;
  var secondTextcolor;
  var buttoncolor;
  var buttontext;
  var buttontextcolor;
  var onPressed;

  CustomRowContainer({
    this.contheight,
    this.contwidth,
    this.contColor,
    this.svgImagePath,
    this.svgheight,
    this.svgwidth,
    this.firstText,
    this.firstTextsize,
    this.firstTextcolor,
    this.secondText,
    this.secondTextsize,
    this.secondTextcolor,
    this.buttoncolor,
    this.buttontext,
    this.buttontextcolor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: contheight,
      width: contwidth,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: contColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(
                  svgImagePath,
                  width: svgheight,
                  height: svgwidth,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: responsive(5, context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        firstText,
                        style: TextStyle(fontSize: firstTextsize, fontWeight: FontWeight.bold,color: firstTextcolor),
                      ),
                      Text(
                        secondText,
                        style: TextStyle(fontSize: secondTextsize, fontWeight: FontWeight.bold,color: secondTextcolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: responsive(50, context),
            width: responsive(100, context),
            decoration: BoxDecoration(
              color: buttoncolor,
              borderRadius: BorderRadius.circular(responsive(10.0, context)),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(0, 3), // Offset in the form of (dx, dy)
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: responsive(8.0, context), horizontal: responsive(12.0, context)),
            child: TextButton(
              onPressed: onPressed,
              child: Text(
                buttontext,
                style: TextStyle(color: buttontextcolor,fontSize: responsive(10, context)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}