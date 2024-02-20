import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Calculator')),
        body: Column(
          children: [
            Container(
              color: Colors.blue, // 파란색 배경
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 정렬
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 66,
                      color: Colors.white,
                    ), // 폰트 사이즈 조정
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumberButton(number: '1', color: Colors.white),
                  NumberButton(number: '2', color: Colors.white),
                  NumberButton(number: '3', color: Colors.white),
                  OperatorButton(
                      operator: 'CA',
                      backgroundColor: Colors.red,
                      textColor: Colors.white),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumberButton(number: '4', color: Colors.white),
                  NumberButton(number: '5', color: Colors.white),
                  NumberButton(number: '6', color: Colors.white),
                  OperatorButton(
                      operator: '+',
                      backgroundColor: Colors.red,
                      textColor: Colors.white),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumberButton(number: '7', color: Colors.white),
                  NumberButton(number: '8', color: Colors.white),
                  NumberButton(number: '9', color: Colors.white),
                  NumberButton(number: '0', color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final String number;
  final Color color;

  const NumberButton({
    required this.number,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        number,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: color,
        ),
      ),
    );
  }
}

class OperatorButton extends StatelessWidget {
  final String operator;
  final Color textColor;
  final Color backgroundColor;

  const OperatorButton({
    required this.operator,
    required this.backgroundColor,
    required this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: backgroundColor, // 배경색 설정
        child: Center(
          child: Text(
            operator,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              color: textColor, // 텍스트 색상 설정
            ),
          ),
        ),
      ),
    );
  }
}
