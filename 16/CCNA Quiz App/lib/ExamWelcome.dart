import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ExamCate.dart';
import 'package:flutter_app/TransitionAnimation.dart';
class ExamWelcome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExamPageState();
    throw UnimplementedError();
  }
}
class _ExamPageState extends State<ExamWelcome>{
  void turnBackHomePage(){
    if(Navigator.canPop(context)){
      Navigator.pop(context);
    }
  }
  void openMenu(){
    Navigator.push(context,  SlideRightRoute(page: ExamCate()));
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays ([]);
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    double fixedWidth = 408.99;
    double fixedHeight = 724;
    double widthRatio =  widthScreen / fixedWidth;
    double heightRatio = heightScreen / fixedHeight;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Flexible(
                child: Container(
                    margin: EdgeInsets.only(top: 22 * heightRatio),
                    width: widthScreen, height: 66 * heightRatio,
                    padding: EdgeInsets.only(top: 0, left: 0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton(
                          child: Container(margin: EdgeInsets.only(top: 12.02*heightRatio), width: 38.47*widthRatio,height: 24.25*heightRatio,child: Image.asset('src/menuButton.png')),
                          onPressed: () => {
                            openMenu()
                          },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: Text('CCNA 200-301',style: TextStyle(color: Colors.red, fontSize: 20, fontFamily: 'Noto Serif'),),),
                            Container(child: Text('Training',style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'Noto Serif'),))
                          ],
                        )
                      ],)
                )
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: widthScreen,
                child: Center(
                    child: Image.asset('src/Exam.png')
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(child: Text('Welcome',style: TextStyle(fontFamily: 'NotoSerif', fontWeight: FontWeight.normal, fontSize: 40,color: Colors.black),),),
                    SizedBox(height: 20,),
                    Center(child: Text('Select Your Category',style: TextStyle(fontFamily: 'NotoSerif', fontWeight: FontWeight.normal, fontSize: 40,color: Colors.black),),)
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: RaisedButton(
                    child: Image.asset('src/backArrow.png'),
                    onPressed: () => {
                      turnBackHomePage()
                    },
                  )
              ),
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}