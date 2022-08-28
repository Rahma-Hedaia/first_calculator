import 'package:flutter/material.dart';

class ClaculatorButton extends StatelessWidget {
String button_name;
Function onButtonClick;
ClaculatorButton(this.button_name,this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:onButtonClick,
      child: Text( button_name , style: TextStyle(
      fontSize: 20,
      color: Colors.orange
    )),backgroundColor: Colors.black,);
  }
}
