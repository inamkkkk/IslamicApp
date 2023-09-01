import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../Responsive/Responsiveclass.dart';
import '../../controller/hadithController.dart';

class ChapterList extends StatelessWidget {
  var bookslug;
   ChapterList({super.key,this.bookslug});

  @override
  Widget build(BuildContext context) {
    return  Consumer<HadisDB>(
        builder: (context, Hadis, child) {


          if(Hadis.ChapterNames==null){

            Hadis.FatchChapter(bookslug:bookslug );

          }
        return SafeArea(child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          Hadis.buttontogel();
                        },
                        child: Padding(
                          padding:  EdgeInsets.symmetric(vertical: responsive(10, context)),
                          child: Container(
                            height: responsive(40, context),
                              width: responsive(80, context),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(responsive(10.0, context)),
                              ),child: Center(child: Text('${Hadis.isEnglish==true?'Urdu':'English'}')),
                    ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Hadis.ChapterNames==null? Center(child: CircularProgressIndicator()):ListView.builder(
                      shrinkWrap: true,
                        primary: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: Hadis.ChapterNames!.chapters!.length,
                        itemBuilder: (context,i){
                          return InkWell(
                            onTap: (){
                            },
                            child: Container(
                              height: responsive(80, context),
                              child: Card(
                                elevation: 4,

                                child: Hadis.isEnglish==true?Center(child: Text('${Hadis.ChapterNames!.chapters![i].chapterEnglish}',textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),)):Center(child: Text('${Hadis.ChapterNames!.chapters![i].chapterUrdu}',textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold))),

                              ),
                            ),
                          );
                        }),

                  ),
                ],
              ),
            ),
          )
        ));
      }
    );
  }
}


