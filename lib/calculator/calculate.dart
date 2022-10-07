import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const Cal());
}

class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  State<Cal> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Cal> {
  String result = "0", expression = "";

  buttonPressed(String value) {
    print(value);

    setState(() {
      if (value == "CLEAR") {
        result = "0";
      } else if (value == "PI") {
        expression = result.replaceAll("X", "*");
        Parser p = Parser();
        Expression exp = p.parse(expression);
        ContextModel cm = ContextModel();
        dynamic calculate = (exp.evaluate(EvaluationType.REAL, cm) *
                exp.evaluate(EvaluationType.REAL, cm)) *
            (22 / 7);

        result = "$calculate";
      } else if (value == "PAPAS") {
        if (result.contains(".")) {
          return;
        } else {
          result = result + value;
        }
      } else if (value == "sin") {
      } else if (result == "Infinity") {
        value == "CLEAR";
      } else if (value == "=") {
        expression = result.replaceAll("X", "*");
        Parser p = Parser();
        Expression exp = p.parse(expression);
        ContextModel cm = ContextModel();
        dynamic calculate = exp.evaluate(EvaluationType.REAL, cm);

        result = "$calculate";
      } else {
        if (result == "0") {
          result = value;
        } else {
          result = result + value;
        }
      }
    });
  }

  Widget myButton(String buttonLabel) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonLabel),
        child: Text(
          buttonLabel,
          style: TextStyle(fontSize: 24, color: Colors.orange[400]),
        ),
      ),
    );
  }

  Widget myButton1(String buttonLabel) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonLabel),
        child: Text(
          buttonLabel,
          style: TextStyle(fontSize: 24, color: Colors.orange[400]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 59, 60),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Calculator By Frank"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: Divider(),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      myButton("7"),
                      myButton("8"),
                      myButton("9"),
                      myButton("/"),
                    ],
                  ),
                  Row(
                    children: [
                      myButton("4"),
                      myButton("5"),
                      myButton("6"),
                      myButton("X"),
                    ],
                  ),
                  Row(
                    children: [
                      myButton("1"),
                      myButton("2"),
                      myButton("3"),
                      myButton("-"),
                    ],
                  ),
                  Row(
                    children: [
                      myButton("."),
                      myButton("0"),
                      myButton("00"),
                      myButton("+"),
                    ],
                  ),
                  Row(
                    children: [
                      myButton1("PI"),
                      myButton("="),
                      myButton("CLEAR"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
