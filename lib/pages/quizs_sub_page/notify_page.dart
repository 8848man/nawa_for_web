import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawa_for_web/pages/solve_quizs/first_page.dart';

class NotifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Stack(
          children: [
            Image.asset(
              'assets/notify_page.jpg',
              width: MediaQuery.of(context).size.width * 1,
              // height: MediaQuery.of(context).size.height * 1,
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                ),
                Text(
                  "터치해서 진행하기",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.075,
                    fontFamily: 'Jua',
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => FirstQuiz()),
        ),
      ),
    );
  }
}
