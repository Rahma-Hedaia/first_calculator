import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>counterstate();
}
class counterstate extends State{
  int num=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter application',style: TextStyle(
            fontSize: 20
        )),centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text('$num')),
          FloatingActionButton(onPressed: (){
            setState(() {
              num++;
            });
          },child: Text('+'),)
        ],
      ),
    );
  }
}
