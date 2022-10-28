// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:nawa_for_web/pages/quizs_sub_page/notify_page.dart';
import 'package:nawa_for_web/pages/quizs_sub_page/quiz_integ_page.dart';
import 'package:nawa_for_web/service/token_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/quizs_sub_page/all_potion_getted.dart';
import 'pages/quizs_sub_page/wrong_answer.dart';
import 'pages/solve_quizs/first_page.dart';
import 'pages/create_quizs/select_quiz_form.dart';

void main() async {
  // main() 함수에서 async를 쓰려면 필요
  WidgetsFlutterBinding.ensureInitialized();

  // shared_preferences 인스턴스 생성
  SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TokenService(prefs)),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '나와 할로윈 프로모션',
      theme: ThemeData(
        fontFamily: 'BlackAndWhite',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xff000000),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new StartPage(),
        '/WrongAnswer': (BuildContext context) => new WrongAnswer(),
        '/WinThisGame': (BuildContext context) => new WinThisGame(),
      },
    );
  }
}

/// 토큰 클래스
class Token {
  String token; // 정답토큰

  Token(this.token); // 생성자
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
                  'assets/intro_page.jpg',
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.53),
                      IconButton(
                        iconSize: MediaQuery.of(context).size.width * 0.33,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => NotifyPage()),
                        ),
                        icon: Image.asset(
                          'assets/start_button.png',
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
