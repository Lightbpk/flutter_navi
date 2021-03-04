import 'package:flutter/material.dart';



class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text("Вопрос")),
        body: Center(child: Column(children: [
          RaisedButton(onPressed: () async{
            bool valueDialog = await Navigator.push(context, PageRouteBuilder(
                opaque: false, pageBuilder: (BuildContext context,_,__) => MyPopup(),
            transitionsBuilder: (___, Animation<double> animation,____, Widget child){
                  return FadeTransition(opacity:animation,
                  child: ScaleTransition(scale: animation,child: child,));
            }));
            if(valueDialog) _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Yes'),backgroundColor: Colors.green,));
            else _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('No'),backgroundColor: Colors.red,));
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
      actions: [FlatButton(onPressed: (){Navigator.pop(context,true);}, child: Text('Да')), // dialog value var  true
      FlatButton(onPressed: (){Navigator.pop(context,false);}, child: Text('нет'))],// false
    );
  }

}

void main() {
  runApp(MaterialApp(
    home:MainScreen()
  ));
}