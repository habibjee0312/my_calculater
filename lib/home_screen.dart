import 'dart:ffi';

import "package:flutter/material.dart";
import 'package:my_calculater/components/button.dart';
import 'package:math_expressions/math_expressions.dart';



class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var input='';
  var result='';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      input,
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      result,
                      style: const TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      MY_Button(title: 'AC',onPress: (){
                        input='';
                        result='';
                        setState(() {
                        });
                      },),
                      MY_Button(title: 'del',onPress: (){
                        input=input.substring(0,input.length-1);
                        setState(() {
                        });

                      },),
                      MY_Button(title: '+/-',onPress: (){
                        input+='+/-';
                        setState(() {});
                      },),
                      MY_Button(title: '/', color: Color(0xffffa00a),onPress: (){
                        input+='/';
                        setState(() {});
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MY_Button(title: '7',onPress: (){
                        input+='7';
                        setState(() {});
                      },),
                      MY_Button(title: '8',onPress: (){
                        input+='8';
                        setState(() {});
                      },),
                      MY_Button(title: '9',onPress: (){
                        input+='9';
                        setState(() {});
                      },),
                      MY_Button(title: 'x',color: Color(0xffffa00a),onPress: (){
                        input+='x';
                        setState(() {});
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MY_Button(title: '4',onPress: (){
                        input+='4';

                        setState(() {});
                      },),
                      MY_Button(title: '5',onPress: (){
                        input+='5';
                        setState(() {});
                      },),
                      MY_Button(title: '6',onPress: (){
                        input+='6';
                        setState(() {});
                      },),
                      MY_Button(title: '-',color: Color(0xffffa00a),onPress: (){
                        input+='-';
                        setState(() {});
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MY_Button(title: '1',onPress: (){
                        input+='1';
                        setState(() {});
                      },),
                      MY_Button(title: '2',onPress: (){
                        input+='2';
                        setState(() {});
                      },),
                      MY_Button(title: '3',onPress: (){
                        input+='3';
                        setState(() {});
                      },),
                      MY_Button(title: '+',color: Color(0xffffa00a),onPress: (){
                        input+='+';
                        setState(() {});
                      },)
                    ],
                  ),
                  Row(
                    children: [
                      MY_Button(title: '%',onPress: (){
                        input+='%';
                        setState(() {});
                      },),
                      MY_Button(title: '0',onPress: (){
                        input+='0';
                        setState(() {});
                      },),
                      MY_Button(title: '.',onPress: (){
                        input+='.';
                        setState(() {});
                      },),
                      MY_Button(title: '=',color: Color(0xffffa00a),onPress: (){
                       equalPress();
                        setState(() {});
                      },)
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      
      
      ),
    );
  }
  void equalPress(){
    String finalUserInput = input;
    finalUserInput=finalUserInput.replaceAll('x', '*');
    Parser p=Parser();
    Expression expression=p.parse(finalUserInput);
    ContextModel contextModel=ContextModel();
    double eval=expression.evaluate(EvaluationType.REAL, contextModel);
    result=eval.toString();
  }
}
