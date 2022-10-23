import 'dart:collection';
import 'package:nawa_for_web/pages/solve_quizs/first_page.dart';
import 'package:nawa_for_web/pages/solve_quizs/fourth_page.dart';
import 'package:nawa_for_web/pages/solve_quizs/third_page.dart';
import 'package:nawa_for_web/service/token_service.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';

class SecondQuiz extends StatefulWidget {
  @override
  _SecondQuizState createState() => _SecondQuizState();
}

class _SecondQuizState extends State<SecondQuiz> {
  TextEditingController createTextController = TextEditingController();
  Function eq = const ListEquality().equals;
  List<String> answer = ['0', '0', '0'];
  List<String> answer1 = ['1', '3', '2'];

  @override
  Widget build(BuildContext context) {
    return Consumer<TokenService>(
      builder: (context, tokenService, child) {
        List<String> testTokenList = tokenService.testTokenList;

        _modalRouterToRight(BuildContext context) async {
          String routeName = await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("우와! 포션이 다 모였네요! \n 우리 같이 마녀의 변신을 풀어볼까요?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("다시 생각해볼게요."),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop('/WinThisGame');
                    },
                    child: Text("네!"),
                  ),
                ],
              );
            },
          );
          setState(() {});
          Navigator.of(context).pushNamed(routeName);
        }

        _modalRouterToWrong(BuildContext context) async {
          String routeName = await showDialog(
            context: context,
            builder: (context) {
              createTextController.text = "";
              return AlertDialog(
                title: Text("입력하신 정답이 맞나요?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("다시 생각해볼게요."),
                  ),
                  TextButton(
                    onPressed: () {
                      // 정답이 맞을 경우 토큰을 바꿔주는 로직
                      if (eq(answer, answer1)) {
                        tokenService.updateTestToken('2', 1);
                      } else {
                        tokenService.updateTestToken('1', 1);
                        Navigator.of(context).pop('/WrongAnswer');
                      }
                      // 포션이 하나라도 부족할 경우 retrun
                      for (int j = 0; j <= 3; j++) {
                        if (testTokenList[j] == '1') {
                          Navigator.pop(context);
                          return;
                        }
                      }
                      _modalRouterToRight(context);
                    },
                    child: Text("맞아요!"),
                  ),
                ],
              );
            },
          );
          setState(() {});
          Navigator.of(context).pushNamed(routeName);
        }

        _iconButtonCreater(BuildContext context, int answerIndex,
            String insertAnswer, String image) {
          return IconButton(
            iconSize: MediaQuery.of(context).size.width * 0.15,
            onPressed: () {
              answer[answerIndex] = insertAnswer;
              setState(() {});
              Navigator.pop(context);
            },
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(image),
                Text(
                  insertAnswer,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.1,
                  ),
                ),
              ],
            ),
          );
        }

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: IconButton(
                              iconSize: 30,
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => FirstQuiz()),
                              ),
                              icon: Image.asset('assets/circle_purple.png'),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: IconButton(
                              iconSize: 30,
                              onPressed: () {},
                              icon: Image.asset('assets/circle_white.png'),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: IconButton(
                              iconSize: 30,
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => ThirdQuiz()),
                              ),
                              icon: Image.asset('assets/circle_purple.png'),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            child: IconButton(
                              iconSize: 30,
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => FourthQuiz()),
                              ),
                              icon: Image.asset('assets/circle_purple.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //문제 텍스트
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Text(
                      '마카롱에 숨겨진\n 금고의 비밀번호는?',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //정답 입력 아이콘들
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.25,
                                onPressed: () {
                                  //카드 아이콘 눌렀을 시에 뜨는 정답 입력 창
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      createTextController.text = "";
                                      return AlertDialog(
                                        title: Text("초록색 마카롱의 정답은 무엇일까요?"),
                                        content: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.25,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  _iconButtonCreater(context, 0,
                                                      '1', 'assets/witch1.png'),
                                                  _iconButtonCreater(context, 0,
                                                      '2', 'assets/witch1.png'),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  _iconButtonCreater(context, 0,
                                                      '3', 'assets/witch1.png'),
                                                  _iconButtonCreater(context, 0,
                                                      '4', 'assets/witch1.png'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/macaroon_green.png'),
                                    Text(
                                      answer[0],
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.25,
                                onPressed: () {
                                  //카드 아이콘 눌렀을 시에 뜨는 정답 입력 창
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      createTextController.text = "";
                                      return AlertDialog(
                                        title: Text("보라색 마카롱의 정답은 무엇일까요?"),
                                        content: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.25,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  _iconButtonCreater(context, 1,
                                                      '1', 'assets/witch2.png'),
                                                  _iconButtonCreater(context, 1,
                                                      '2', 'assets/witch2.png'),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  _iconButtonCreater(context, 1,
                                                      '3', 'assets/witch2.png'),
                                                  _iconButtonCreater(context, 1,
                                                      '4', 'assets/witch2.png'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/macaroon_purple.png'),
                                    Text(
                                      answer[1],
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.25,
                                onPressed: () {
                                  //카드 아이콘 눌렀을 시에 뜨는 정답 입력 창
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      createTextController.text = "";
                                      return AlertDialog(
                                        title: Text("보라색 마카롱의 정답은 무엇일까요?"),
                                        content: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.25,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  _iconButtonCreater(context, 2,
                                                      '1', 'assets/witch3.png'),
                                                  _iconButtonCreater(context, 2,
                                                      '2', 'assets/witch3.png'),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  _iconButtonCreater(context, 2,
                                                      '3', 'assets/witch3.png'),
                                                  _iconButtonCreater(context, 2,
                                                      '4', 'assets/witch3.png'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset('assets/macaroon_blue.png'),
                                    Text(
                                      answer[2],
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: IconButton(
                      iconSize: MediaQuery.of(context).size.width * 0.2,
                      onPressed: () {
                        _modalRouterToWrong(context);
                      },
                      icon: Image.asset('assets/key.png'),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (testTokenList[0] == '2') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/potion_red.png'),
                              ),
                            ),
                          ] else if (testTokenList[0] == '1') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/question_mark.png'),
                              ),
                            ),
                          ],
                          if (testTokenList[1] == '2') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/potion_pink.png'),
                              ),
                            ),
                          ] else if (testTokenList[1] == '1') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/question_mark.png'),
                              ),
                            ),
                          ],
                          if (testTokenList[2] == '2') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/potion_orange.png'),
                              ),
                            ),
                          ] else if (testTokenList[2] == '1') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/question_mark.png'),
                              ),
                            ),
                          ],
                          if (testTokenList[3] == '2') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/potion_green.png'),
                              ),
                            ),
                          ] else if (testTokenList[3] == '1') ...[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              child: IconButton(
                                iconSize:
                                    MediaQuery.of(context).size.width * 0.12,
                                onPressed: () {},
                                icon: Image.asset('assets/question_mark.png'),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
