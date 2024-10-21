import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  void logButtonPress(String buttonText) {
    debugPrint('Button pressed: $buttonText');
  }

  void buttonPressed(String buttonText) {
    logButtonPress(buttonText);
  }

  Widget buildButton(String buttonText, {Color textColor = Colors.white}) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(24.0),
          side: const BorderSide(color: Colors.grey),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: textColor),
        ),
        onPressed: () => buttonPressed(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator",),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          const Row(
          children: <Widget>[
        Expanded(
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "0",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Text(
                "0",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
          const Spacer(),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("/", textColor: Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("*", textColor: Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("-", textColor: Colors.blue),
                ],
              ),
              
              Row(
                children: <Widget>[
                  buildButton("."),
                  buildButton("0"),
                  buildButton("00"),
                  buildButton("+", textColor: Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("C", textColor: Colors.red),
                  buildButton("AC", textColor: Colors.red),
                  buildButton("=", textColor: Colors.green),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}