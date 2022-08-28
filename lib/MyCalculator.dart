import 'dart:math';

import 'package:first_calculator/CalculatorButton.dart';
import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String text = '';

  double result;
  List nums =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(child: Text(text,style: TextStyle(
                fontSize: 25
              ),)),
            ],
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClaculatorButton('7', (){
                  setState(() {
                    text += '7';
                  });
                }),
                ClaculatorButton('8', (){
                  setState(() {
                    text += '8';
                  });
                }),
                ClaculatorButton('9', (){
                  setState(() {
                    text += '9';
                  });
                }),
                ClaculatorButton(' x ', (){
                  setState(() {
                    text += ' x ';
                  });
                }),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClaculatorButton('4', (){
                  setState(() {
                    text += '4';
                  });
                }),
                ClaculatorButton('5', (){
                  setState(() {
                    text += '5';
                  });
                }),
                ClaculatorButton('6', (){
                  setState(() {
                    text += '6';
                  });
                }),
                ClaculatorButton(' - ', (){
                  setState(() {
                    text += ' - ';
                  });
                }),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClaculatorButton('1', (){
                  setState(() {
                    text += '1';
                  });
                }),
                ClaculatorButton('2', (){
                  setState(() {
                    text += '2';
                  });
                }),
                ClaculatorButton('3', (){
                  setState(() {
                    text += '3';
                  });
                }),
                ClaculatorButton(' + ', (){
                  setState(() {
                    text += ' + ';
                  });
                }),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClaculatorButton(' / ', (){
                  setState(() {
                    text += ' / ';
                  });
                }),
                ClaculatorButton('0', (){
                  setState(() {
                    text += '0';
                  });
                }),
                ClaculatorButton('.', (){
                  setState(() {
                    text += '.';
                  });
                }),
                ClaculatorButton(' = ', (){
                   nums = text.split(' ');
                  result = double.parse(nums[0]);
                  for(int i=1;i<nums.length;i+=2){
                    if (nums[i]=="sqrt"){
                      nums[i]=sqrt(int.parse(nums[i+1])).toString();
                      nums.removeAt(i+1);}

                    if(nums[i]=="+"){
                      result+=double.parse(nums[i+1]);
                    }else if (nums[i]=="-"){
                      result-=double.parse(nums[i+1]);
                    }else if (nums[i]=="x"){
                      result*=double.parse(nums[i+1]);
                    }else if (nums[i]=="/"){
                      result/=double.parse(nums[i+1]);
                    }
                  }setState(() {
                    text+= " = " + result.toString();
                  });
                }),
                ClaculatorButton('del', (){
                  setState(() {
                    text = '';
                    nums.clear();
                    result=0;
                  });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }

  void OnDigitClick(String digitNum) {
    // print(digitNum);
    setState(() {
      text += digitNum;
    });
  }

  double squareRoot(){

  }
  // void onEqualClick() {
  //   String operator = '';
  //   List userInput = text.split(' ');
  //   double num = 0;
  //   result = double.parse(userInput[0]);
  //   for (int i = 1; i < userInput.length; i++) {
  //     if (i % 2 != 0) {
  //       operator = userInput[i];
  //     } else {
  //       num = double.parse(userInput[i]);
  //     }
  //     if(operator =='+'){
  //       result+=num;
  //     }else if(operator == '-'){
  //       result-=num;
  //     }else if(operator == 'x'){
  //       result*=num;
  //     }else if(operator == '/'){
  //       result/=num;
  //     }else if(operator=='='){
  //       setState(() {
  //         text = result.toString();
  //       });
  //     }
  //   }
  // }
}
/*
        if(operator =='+'){
          result+=double.parse(userInput[i+1]);
        }else if(operator == '-'){
          result-=double.parse(userInput[i+1]);
        }else if(operator == 'x'){
          result*=double.parse(userInput[i+1]);
        }else if(operator == '/'){
          result/=double.parse(userInput[i+1]);
        }else if(operator=='='){
          setState(() {
            text = result.toString();
          });
        }
 */

/*
   (){
                  String operator='';
                  List userInput = text.split(' ');
                  result = double.parse(userInput[0]);
                  for(int i=1;i<userInput.length;i++){
                    if(i%2 !=0){
                      operator= userInput[i];
                      if(operator =='+'){
                        result+=double.parse(userInput[i+1]);
                      }else if(operator == '-'){
                        result-=double.parse(userInput[i+1]);
                      }else if(operator == 'x'){
                        result*=double.parse(userInput[i+1]);
                      }else if(operator == '/'){
                        result/=double.parse(userInput[i+1]);
                      }
                      setState(() {
                        text = result.toString();
                      });
                  }
                }
 */
