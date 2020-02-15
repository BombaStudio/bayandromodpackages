/*
final GlobalKey<ScaffoldState> _scaffkey = GlobalKey<ScaffoldState>();
* */
import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BayAndroMod',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Home'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _New extends MaterialPageRoute<Null>{
  _New() : super(builder: (BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("laalla"),
      ),
    );
  }
  );
}
class _mainpage extends MaterialPageRoute<Null>{
  _mainpage() : super(builder: (BuildContext context){
    final GlobalKey<ScaffoldState> _scaffkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Center(
        
      ),
      drawer: Drawer(),
    );
  });
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffkey = GlobalKey<ScaffoldState>();
  Container _Sitem = Container();
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        key: _scaffkey,
        /*
        appBar: AppBar(
          title: Text(widget.title),
        ),
        */
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            width: 50,
            height: 50,
            color: Colors.blueGrey,
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => this
            ._scaffkey
            .currentState
            .showBottomSheet((ctx) => _buildBottomSheet(ctx)),
          tooltip: 'tiktik',
          child: Icon(Icons.adjust),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      ),
    );
  }
  Container _buildBottomSheet(BuildContext context){
    return Container(
      height: 300,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListView(
        children: <Widget>[
          ListTile(title: Text("BayAndroMod")),
          Container(
            alignment: Alignment.center,
            child: RaisedButton.icon(
              icon: Icon(Icons.android),
              label: Text("Main Page"),
              onPressed: (){
                Navigator.push(context, _mainpage());
              },
            )
          ),
        ],
      ),
    );
  }

}