import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Responsive/Responsiveclass.dart';

class CustomFirstRowContainer extends StatefulWidget {
  // var contheight;
  // var contwidth;
  // var contColor;
  var svgImagePath;
  var svgheight;
  var svgwidth;
  // var firstText;
  var firstTextsize;
  var firstTextcolor;
  // var secondText;
  // var secondTextsize;
  // var secondTextcolor;
  // var iconB;
  // var onPressed;

  CustomFirstRowContainer({
    // this.contheight,
    // this.contwidth,
    // this.contColor,
    this.svgImagePath,
    this.svgheight,
    this.svgwidth,
    // this.firstText,
    this.firstTextsize,
    this.firstTextcolor,
    // this.secondText,
    // this.secondTextsize,
    // this.secondTextcolor,
    // this.iconB,
    // this.onPressed,
  });

  @override
  State<CustomFirstRowContainer> createState() => _CustomFirstRowContainerState();
}

class _CustomFirstRowContainerState extends State<CustomFirstRowContainer> {


  @override
  Widget build(BuildContext context) {
    var coins3;
    return Container(
            // height: widget.contheight,
            // width: widget.contwidth,
            // color: widget.contColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  // onTap:
                  //     (){
                  //   widget.onPressed;
                  // },
                    onTap:(){
                      // Gadds.rewardedAdd(coins3,context);
                      // Future.delayed(Duration.zero, () {
                      //   Navigator.of(context, rootNavigator: true).pop();
                      // });


                    },
                    child: Icon(Icons.arrow_back,size: responsive(25, context),color: Colors.black,)
                ),


                Text(
                  "IslamicApp",
                  style: TextStyle(fontSize: widget.firstTextsize, fontWeight: FontWeight.bold,color: widget.firstTextcolor),
                ),


                Image.asset(
                  widget.svgImagePath,
                  width: widget.svgheight,
                  height: widget.svgwidth,
                ),
              ],
            ),
          );
        }
  }
