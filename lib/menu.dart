import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'compete.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<String> events = [
    "Compete now",
    "Meet new rappers",
    "Explore",
    "Play & Learn",
    "Learn Rap",
    "Practice Rap",
  ];
  List<String> description = [
    "Challenges for you",
    "Chat with other rappers",
    "See rapper like you",
    "Learn in fun way",
    "Learn Rap",
    "Practice Rap",
  ];
  List<String> images = [
    "assets/trophy.png",
    "assets/chat.png",
    "assets/media.png",
    "assets/book.png",
    "assets/reading.png",
    "assets/trophy.png",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellowAccent,
          onPressed: () {},
          child: Icon(Icons.edit),
        ),
        body: Container(
          color: Colors.grey,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "What do you want to do...",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                height: height * 0.68,
                child: GridView(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: List.generate(events.length, (index) {
                    return GestureDetector(
                        child: Container(
                            //color: Colors.black,
                            margin: const EdgeInsets.all(20.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(events[index]),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Center(
                                          child: Container(
                                              child: new Stack(
                                            children: <Widget>[
                                              new Image.asset(
                                                images[index],
                                                width: 80.0,
                                                height: 80.0,
                                              )
                                            ],
                                          )),
                                        ),
                                        Text(
                                          description[index],
                                          style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  )
                                ])),
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: events[index] + " " + "click",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Compete()),
                          );
                        });
                  }).toList(),
                ),
              ),
            ]),
          ),
        ));
  }
}
