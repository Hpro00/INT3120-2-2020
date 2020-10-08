import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ExamCate.dart';
import 'package:flutter_app/ExamWelcome.dart';
import 'package:flutter_app/KnowledgeCate.dart';

import 'KnowledgeWelcome.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello word app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
    throw UnimplementedError();
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({Key key}) : super(key: key);
  final String title = "Welcome";
  @override
  _MyHomePageState createState(){ return _MyHomePageState();}
}
class _MyHomePageState extends State<MyHomePage>{

  void navigatorToKnowledgePage(){
    Navigator.push(context, CupertinoPageRoute(builder: (context) => KnowledgeWelcome()));
  }
  void navigatorToExamPage(){
    Navigator.push(context, CupertinoPageRoute(builder: (context) => ExamWelcome()));
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
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
              children: <Widget>[
                Container(
                  child: Container(
                    margin: EdgeInsets.only(left: 11/fixedWidth*widthScreen, top: 19/fixedHeight*heightScreen),
                    width: 387 * widthRatio,
                    height: 89 * heightRatio,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('src/image1.png'),
                        Image.asset('src/logo.png')
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(),
                    Positioned(
                        top: 70 * heightRatio,
                        left: -8 * widthRatio,
                        width: 445 * widthRatio,
                        height: 641 * heightRatio,
                        child: Image.asset('src/nen-phu.png', fit: BoxFit.fill,)
                    ),
                    Positioned(
                      top: 153 * heightRatio,
                      left: -4 * widthRatio,
                      width: 438 * widthRatio,
                      height: 620 * heightRatio,
                      child: Image.asset('src/nen-chinh.png', fit: BoxFit.fill,),
                    ),
                    Positioned(
                      top: 108 * heightRatio,
                      left: -38 * widthRatio,
                      width: 489 * widthRatio,
                      height: 126 * heightRatio,
                      child: Column(
                        children: [
                          Flexible(
                            flex: 52,
                            child: Text('CCNA 200-301',style: TextStyle(fontFamily: 'NotoSerif',color: Colors.red,fontSize: 40,  fontWeight: FontWeight.normal)),
                          ),
                          Flexible(
                            flex: 81,
                            child: Text('Training', style: TextStyle(color: Colors.black, fontSize: 38, fontWeight: FontWeight.normal, fontFamily: 'NotoSerif'),),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 415 * heightRatio,
                      left: 63 * widthRatio,
                      width: 289 * widthRatio,
                      height: 243 * heightRatio,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaisedButton(
                            color: Color(0xffC4C4C4),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            child: Container(
                              width: 289*widthRatio,
                              height: 85 * heightRatio,
                              child: Center(
                                child: Text('Knowledge',style: TextStyle(fontSize: 40,fontFamily: 'NotoSerif',color: Colors.black),),
                              ),
                            ),
                            onPressed: () => {
                              navigatorToKnowledgePage()
                            },
                          ),
                          RaisedButton(
                            color: Color(0xffC4C4C4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Container(
                              width: 289*widthRatio,
                              height: 85 * heightRatio,
                              child: Center(
                                child: Text('Exam Test',style: TextStyle(fontSize: 40,fontFamily: 'NotoSerif',color: Colors.black),),
                              ),
                            ),
                            onPressed: () => {
                              navigatorToExamPage()
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ]
          )
      ),
    );
    throw UnimplementedError();
  }
}