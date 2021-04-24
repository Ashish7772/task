import 'package:flutter/material.dart';
import 'package:task/nav.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'task',
      home: Nav(),
    );
  }
}