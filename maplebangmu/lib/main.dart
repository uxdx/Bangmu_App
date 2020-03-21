import 'package:flutter/material.dart';
import 'package:maplebangmu/tabs.dart';
void main() => runApp(BangmuCalc());

class BangmuCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Bangmu',
      theme: ThemeData.dark(),
      home: TabControler(),
    ); 
  }
}
class TabControler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Tab(text: '표기 방무'),
      Tab(text: '표기외 방무'),
      Tab(text: '결과 ')
    ];
    final tabPage = [
      DisplayBangmu(),
      UndisplayBangmu(),
      Result()
    ];
    // TODO: implement build
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('메이플 방무 계산기 Expansion'),
            bottom: TabBar(
              isScrollable: true,
              tabs: tabs
            ),
          ),
        body: TabBarView(
          children: tabPage,
        ),
        
      )
    );
  }
}