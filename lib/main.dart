import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}

class _myAppState extends State<MyApp> {
  var _questionIndex = 0;
  List<String> questions = [];

  void answerQuestions() {
    setState(() {
      if (_questionIndex < 5) {
        _questionIndex++;
      } else {
        print("Index Increased");}
    });
  }

  @override
  Widget build(BuildContext context) {
    questions = [
      'What\'s your favt color ?',
      'What\'s your favt animal ?',
      'What\'s your favt color ?',
      'What\'s your favt animal ?',
      'What\'s your favt color ?',
      'What\'s your favt animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second App'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                questions[_questionIndex],
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            RaisedButton(
              child: Text('Answer 1'),
              color: Colors.blue,
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
