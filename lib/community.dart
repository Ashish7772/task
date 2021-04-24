import 'package:flutter/material.dart';
import 'menu.dart' as menu;
import 'compete.dart' as compete;
import 'feedback.dart' as feedback;
import 'explore.dart' as explore;

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => new _CommunityState();
}

class _CommunityState extends State<Community> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: controller,
          indicatorWeight: 5.0,
          indicatorColor: Colors.brown,
          indicatorPadding: EdgeInsets.all(5.0),
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.menu),text:"Menu",),
            new Tab(icon: new Icon(Icons.wine_bar),text:"Compete",),
            new Tab(icon: new Icon(Icons.explore),text:"Explore",),
            new Tab(icon: new Icon(Icons.feedback),text:"Feedback",),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new menu.Menu(),
          new compete.Compete(),
          new feedback.FeedBack(),
          new explore.Explore(),
        ],
      ),
    );
  }
}

