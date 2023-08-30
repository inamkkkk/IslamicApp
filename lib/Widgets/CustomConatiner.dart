import 'package:flutter/material.dart';

import '../Responsive/Responsiveclass.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardConatiner extends StatelessWidget {
  var  customColor;
  // var  image;
  var  title;
  var  subtitle;
  var width;
  var height;
  var svgImagePath;
  var svgwidth;
  var svgheight;


  CustomCardConatiner({
    this.customColor,
    // this.image,
    this.title,
    this.subtitle,
    this.width,
    this.height,
    this.svgImagePath,
    this.svgheight,
    this.svgwidth
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: customColor,
        borderRadius: BorderRadius.circular(responsive(10.0, context)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(svgImagePath,
          height:svgheight,
          width: svgwidth,

          ),
          //     .asset(
          //   svgImagePath,
          //   height: svgheight,
          //   width: svgwidth,
          // ),
          SizedBox(
              height: responsive(10, context)
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withOpacity(1),
              fontSize: responsive(18.0, context),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: responsive(16.0, context)
            ),
          ),
          SizedBox(height: responsive(5, context),),
        ],
      ),
    );
  }
}