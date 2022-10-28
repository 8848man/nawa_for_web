import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SimpleQuiz extends StatefulWidget {
  @override
  _SimpleQuizState createState() => _SimpleQuizState();
}

class _SimpleQuizState extends State<SimpleQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나와 할로윈 프로모션'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/SimpleQuizSample.png'),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("이전 문제로!"),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("다음 문제로!"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
