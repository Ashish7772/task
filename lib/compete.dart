import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Compete extends StatefulWidget {
  @override
  _CompeteState createState() => _CompeteState();
}

enum Options { True, False, Uncertain }

class _CompeteState extends State<Compete> {
  Options _options;
  bool result = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.chevron_left,
              color: Colors.grey,
            ),
          ),
          title: Container(
            width: double.infinity,
            height: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  color: Colors.yellow,
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    height: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  result
                      ? Container(
                          color: Colors.black,
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "You started a 1 day streak!\nSee streak",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      : Container(),
                  result
                      ? Center(
                          child: Container(
                            color: Colors.blue,
                            width: double.infinity,
                            padding: EdgeInsets.all(8),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.celebration,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Correct!",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      : Container(),
                  Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.question_answer_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LOGIC WARMUP",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Logic Puzzles - Intermediate \nWarmup",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        )
                      ]),
                  SizedBox(
                    height: 20,
                  ),
                  Text("1. Jorge runs faster than Drew"),
                  Text("2. Drew runs faster than Bernard"),
                  Text("3. Jorge runs faster than Bernard"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "If the first two statements are true, then the third statement is:"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.grey,
                    height: 2,
                    width: double.infinity,
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: const Text('True'),
                        leading: Radio(
                          value: Options.True,
                          groupValue: _options,
                          onChanged: (Options value) {
                            setState(() {
                              _options = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('False'),
                        leading: Radio(
                          value: Options.False,
                          groupValue: _options,
                          onChanged: (Options value) {
                            setState(() {
                              _options = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Uncertain'),
                        leading: Radio(
                          value: Options.Uncertain,
                          groupValue: _options,
                          onChanged: (Options value) {
                            setState(() {
                              _options = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                          (states) {
                            if (_options == null) {
                              return Colors.grey;
                            } else {
                              return Colors.black;
                            }
                          },
                        )),
                        onPressed: () {
                          if (_options == Options.True) {
                            setState(() {
                              result = true;
                              /*Future.delayed(Duration(seconds: 5), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondQuestion()),
                                );
                              });*/
                            });
                          } else {
                            setState(() {
                              result = false;
                            });
                          }
                        },
                        child: Container(
                          child: Text("Submit"),
                        )),
                  )
                ]),
          ),
        ));
  }
}
