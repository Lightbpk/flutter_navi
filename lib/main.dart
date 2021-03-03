import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Navi")),
      body: Center(child: new RaisedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
      },child: new Text("Got2Scr"))),
    );

  }

}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Navi 2scr")),
      body: Center(child: new RaisedButton(onPressed: (){
        Navigator.pop(context);
      },child: new Text("back"),),),
    );
  }

}
void main(){
  runApp(new MaterialApp(
    home: MainScreen(),
  ));
}