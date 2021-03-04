import 'package:flutter/material.dart';



class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Вопрос")),
        body: Center(child: Column(children: [
          RaisedButton(onPressed: (){
            Navigator.push(context, PageRouteBuilder(
                opaque: false, pageBuilder: (BuildContext context,_,__) => MyPopup(),
            transitionsBuilder: (___, Animation<double> animation,____, Widget child){
                  return FadeTransition(opacity:animation,
                  child: child,);
            }));
          },child: new Text("Вопрос"),)
        ],),),
      );
  }
}

class MyPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text('Ответ'),
      actions: [FlatButton(onPressed: (){Navigator.pop(context);}, child: Text('Да')),
      FlatButton(onPressed: (){Navigator.pop(context);}, child: Text('нет'))],
    );
  }

}

void main() {
  runApp(MaterialApp(
    home:MainScreen()
  ));
}