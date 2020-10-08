import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/KnowledgeWelcome.dart';

class KnowledgeCate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _KnowledgeCateState();
    throw UnimplementedError();
  }
}
class _KnowledgeCateState extends State<KnowledgeCate>{
  void close(){
    if(Navigator.canPop(context)){
      Navigator.pop(context);
    }
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
    List<String> data = <String>["Network Fundamentals", "Network Access ","IP Connectivity","IP Services","Security Fundamentals","Network Automation","BONUS"];
    List<Expanded> myButton = data.map((item){
      return new Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 5, bottom: 5),
          child: RaisedButton(
            color: const Color(0xffD05959),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: new BoxDecoration(color: const Color(0xff493A3A),borderRadius: new BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5), topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
                    ),
                  ),
                  Expanded(
                    flex: 11,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10),
                      child: Text(item, style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: 'NotoSerif',),)
                    ),
                  )
                ],
              ),
            ),
            onPressed: ()=>{},
          ),
        )
      );
    }).toList();
    return Scaffold(
      body: Container(

        child: Stack(
          children: [
            KnowledgeWelcome(),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Positioned(
              top: -9,
              left: -25,
              child: Container(
                width: 352 * widthRatio,
                height: 753 * heightRatio,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: new BorderRadius.only(topRight: const Radius.circular(56), bottomRight: const Radius.circular(56))
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: FlatButton(
                                    child: IconButton(
                                      icon: const Icon(Icons.close, color: Colors.black,size: 50,),
                                    ),
                                    onPressed: () => {
                                      close()
                                    },
                                  ),
                                ),
                                Expanded(flex: 1, child: Container(),)
                              ],
                            )
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              child: Center(
                                child: Text('Category',style: TextStyle(color:Colors.white,fontSize: 50, fontFamily: 'NotoSerif', decoration: TextDecoration.underline,),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: myButton,
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: Container(),)
                  ],
                )
              ),
            )
          ],
        )
      ),
    );
    throw UnimplementedError();
  }
}