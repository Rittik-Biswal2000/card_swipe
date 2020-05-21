import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Swipe App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home:Tinderswiper(),
    );
  }
}
class Tinderswiper extends StatefulWidget {
  @override
  _TinderswiperState createState() => _TinderswiperState();
}

class _TinderswiperState extends State<Tinderswiper>with TickerProviderStateMixin{
  List<String>tinderimages=[
    "assets/images/cap.png",
    "assets/images/download.png",
    "assets/images/iron.png",
    "assets/images/wanda.png",
    "assets/images/wp766431.png",
    "assets/images/cap.png",
    "assets/images/download.png",
    "assets/images/iron.png",
    "assets/images/wanda.png",
    "assets/images/wp766431.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Swipe"),
      ),
      body:
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height*0.6,
            child:TinderSwapCard(
              orientation: AmassOrientation.BOTTOM,
              totalNum: 10,
              stackNum: 3,
              swipeEdge: 4.0,
              maxWidth: MediaQuery.of(context).size.width*0.9,
              maxHeight: MediaQuery.of(context).size.height*0.9,
              minWidth: MediaQuery.of(context).size.width*0.8,
              minHeight: MediaQuery.of(context).size.height*0.8,

              cardBuilder: (context,index)=>Card(
                child:Padding(
                  padding: EdgeInsets.all(16.0),
                  child:Image.asset('${tinderimages[index]}',fit:BoxFit.fill),
                ),

              ),
            )
          ),

        ),
    );
  }
}
