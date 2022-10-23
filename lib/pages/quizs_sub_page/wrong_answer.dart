import 'package:flutter/material.dart';

class WrongAnswer extends StatelessWidget {
  const WrongAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/answer_wrong.png',
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.73),
                      IconButton(
                        iconSize: MediaQuery.of(context).size.width * 0.33,
                        onPressed: () => Navigator.pop(context),
                        icon: Image.asset(
                          'assets/retry_button.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
