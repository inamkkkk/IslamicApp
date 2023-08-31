

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../Global Styles/TextFiles.dart';
import '../Responsive/Responsiveclass.dart';
import '../Widgets/BottomNavBar.dart';
import '../Widgets/CustomConatiner.dart';
import '../Widgets/CustomFirstRow.dart';
import '../Widgets/customRowConatiner.dart';
import '../controller/hadithController.dart';
import 'Qiblahcompass.dart';
import 'SavedData.dart';



class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}


final List<String> svgIcons = [
  'images/home-mark.svg',
  'images/compass-mark.svg',
  'images/book-mark.svg',
];

int _selectedIndex = 0;
// var selected=0;
var pages = [
  Home(),
  QiblahCompass(),
  Saveddata(),
];



class _mainPageState extends State<mainPage> {
  @override
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child:Scaffold(

            bottomNavigationBar: CurvedNavigationBar(
              selectedIndex: _selectedIndex,
              items: svgIcons.map((iconPath) {
                return SvgPicture.asset(
                  height:responsiveDesign(28, context),
                  width:responsiveDesign(28, context),
                  iconPath,
                  color: _selectedIndex == svgIcons.indexOf(iconPath)
                      ? Color(0xFF42a8c3).withOpacity(1)
                      : Colors.grey.withOpacity(0.4),
                );
              }).toList(),
              onTap: (index){
                // if(coins.coins==null){
                //   Gadds.rewardedAdd(0, context);
                // } else{
                //   Gadds.rewardedAdd(coins.coins, context);
                // }
                //
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
            body: pages[_selectedIndex]
        )

    );
  }
}















class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<HadisDB>(
        builder: (context, Hadis, child) {


          if(Hadis.dataa.isEmpty){

            Hadis.loadJsonData();


          }
        return Scaffold(

          body: Padding(
            padding: EdgeInsets.fromLTRB(
                responsive(20, context), 0, responsive(20, context), 0),
            child: SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: responsive(20, context)),
                        child: CustomFirstRowContainer(
                          // contColor: Colors.white70.withOpacity(9),

                          firstTextsize: responsive(15, context),
                          firstTextcolor: Colors.black,

                          svgImagePath: 'images/Hadis.png',
                          svgwidth: responsive(30, context),
                          svgheight: responsive(30, context),

                        ),
                      ),

                      // HeadingText(
                      //     context: context,
                      //     text: '${Hadis!.dataa[0].books![0].name} ',
                      //     color: Colors.black,
                      //     center: false
                      // ),
                      // HeadingText(
                      //     context: context,
                      //     text: '${Hadis!.dataa[0].books![0].hadiths![0].by} ',
                      //     color: Colors.black,
                      //     center: false
                      // ), HeadingText(
                      //     context: context,
                      //     text: '${Hadis!.dataa[0].books![0].hadiths![0].text} ',
                      //     color: Colors.black,
                      //     center: false
                      // ),HeadingText(
                      //     context: context,
                      //     text: '${Hadis!.dataa[0].books![0].hadiths![0].info} ',
                      //     color: Colors.black,
                      //     center: false
                      // ),
                      // ),
            HeadingText(
                          context: context,
                          text: 'Hadith ',
                          color: Colors.black,
                          center: false
                      ),

//-----------------------ListView Hadith's--------------------------//
                      Container(
                        height: responsive(500, context),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/mainbackground.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: responsive(400, context),
                              // width: responsive(350, context),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),

                                        // clipBehavior: Clip.none,
                                        shrinkWrap: true,
                                        primary: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: Hadis!.dataa.length,
                                        itemBuilder: (context, i){
                                          return
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: responsive(10, context)),
                                              child: CustomCardConatiner(
                                                width: responsive(400, context),
                                                height: responsive(400, context),
                                                customColor: Colors.white70.withOpacity(0.3),

                                                svgImagePath: 'images/Hadis.png',
                                                svgheight: responsive(200, context),
                                                svgwidth: responsive(100, context),

                                                title: '${Hadis!.dataa[i].name}',

                                                // subtitle: '${Hadis!.dataa[i].books![i].name[i]} ',
                                                subtitle: '${Hadis!.dataa[i].books![0].name}  ',
                                              ),
                                            );
                                        }
                                    ),
                                  ],
                                ),
                              ),
                            ),






                          ],
                        ),
                      ),

//------------------------------------------------------------------------------------//

                      HeadingText(
                        context: context,
                        text: 'History',
                        color: Colors.black,
                        center: false
                      ),

//---------------------------------------last history Row Conatiner----------------------------//

                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: responsive(10, context)),
                          child:ListView.builder(
                              physics: NeverScrollableScrollPhysics(),

                              // clipBehavior: Clip.none,
                              shrinkWrap: true,
                              primary: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 5,
                              itemBuilder: (context, i){
                                return InkWell(
                                      onTap: (){

                                      },
                                      child: Padding(
                                        padding:EdgeInsets.symmetric(vertical: responsive(10, context)),
                                        child: CustomRowContainer(
                                          contColor: Color(0xFF42a8c3).withOpacity(1),

                                          svgImagePath:'images/Hadis.png',
                                          svgheight: responsive(50, context),
                                          svgwidth: responsive(50, context),

                                          firstText:"History",
                                          firstTextcolor: Colors.black,
                                          firstTextsize: responsive(15, context),

                                          secondText: "Read Islamic History",
                                          secondTextcolor: Colors.black.withOpacity(0.5),
                                          secondTextsize: responsive(10, context),

                                          buttoncolor:Color(0xFF42a8c3).withOpacity(0.5),
                                          buttontext: 'Read',
                                          buttontextcolor: Colors.black,
                                          // onPressed: (){
                                          //   ListnavigateToScreen(context,i);
                                          // },
                                        ),
                                      ),

                                );
                              }
                          ),
                        ),
                      ),

//------------------------------------------------------------------------------------//



                    ],
                  ),
                ),
              ),
            ),
          ),


        );
      }
    );
  }
}
