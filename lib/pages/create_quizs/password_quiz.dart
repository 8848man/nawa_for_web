import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class PasswordQuiz extends StatefulWidget {
  @override
  _PasswordQuizState createState() => _PasswordQuizState();
}

class _PasswordQuizState extends State<PasswordQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나와 할로윈 프로모션'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            // ElevatedButton(
            //   child: Text('로그인 화면'),
            //   onPressed: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (_) => TableBasicsExample()),
            //   ),
            // ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child: Text('PasswordQuiz 화면입니다.'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => PasswordQuiz()),
              ),
            ),
            const SizedBox(height: 12.0),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
