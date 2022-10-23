import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gif/flutter_gif.dart';

class WinThisGame extends StatefulWidget {
  const WinThisGame({Key? key}) : super(key: key);

  @override
  State<WinThisGame> createState() => _WinThisGameState();
}

class _WinThisGameState extends State<WinThisGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(
            'assets/mix_potion.jpg',
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WinThisGame0()),
        ),
      ),
    );
  }
}

class WinThisGame0 extends StatefulWidget {
  const WinThisGame0({Key? key}) : super(key: key);

  @override
  State<WinThisGame0> createState() => _WinThisGameState0();
}

class _WinThisGameState0 extends State<WinThisGame0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(
            'assets/frog_page.jpg',
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WinThisGame0_1()),
        ),
      ),
    );
  }
}

class WinThisGame0_1 extends StatefulWidget {
  const WinThisGame0_1({Key? key}) : super(key: key);

  @override
  State<WinThisGame0_1> createState() => _WinThisGameState0_1();
}

class _WinThisGameState0_1 extends State<WinThisGame0_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(
            'assets/boom.gif',
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WinThisGame1()),
        ),
      ),
    );
  }
}

class WinThisGame1 extends StatefulWidget {
  const WinThisGame1({Key? key}) : super(key: key);

  @override
  State<WinThisGame1> createState() => _WinThisGameState1();
}

class _WinThisGameState1 extends State<WinThisGame1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(
            'assets/witch_page1.jpg',
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WinThisGame2()),
        ),
      ),
    );
  }
}

class WinThisGame2 extends StatefulWidget {
  const WinThisGame2({Key? key}) : super(key: key);

  @override
  State<WinThisGame2> createState() => _WinThisGameState2();
}

class _WinThisGameState2 extends State<WinThisGame2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(
            'assets/witch_page2.jpg',
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WinThisGame3()),
        ),
      ),
    );
  }
}

class WinThisGame3 extends StatefulWidget {
  const WinThisGame3({Key? key}) : super(key: key);

  @override
  State<WinThisGame3> createState() => _WinThisGameState3();
}

class _WinThisGameState3 extends State<WinThisGame3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(
            'assets/witch_page3.jpg',
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WinThisGame4()),
        ),
      ),
    );
  }
}

class WinThisGame4 extends StatefulWidget {
  const WinThisGame4({Key? key}) : super(key: key);

  @override
  State<WinThisGame4> createState() => _WinThisGameState4();
}

class _WinThisGameState4 extends State<WinThisGame4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset(
            'assets/witch_page4.gif',
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => WinThisGame5()),
        ),
      ),
    );
  }
}

class WinThisGame5 extends StatefulWidget {
  const WinThisGame5({Key? key}) : super(key: key);

  @override
  State<WinThisGame5> createState() => _WinThisGameState5();
}

class _WinThisGameState5 extends State<WinThisGame5> {
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
                  'assets/servey_page.jpg',
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 1,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.75),
                      IconButton(
                        iconSize: MediaQuery.of(context).size.width * 0.33,
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/servey_button.png',
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

// class WinThisGame5 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         child: Center(
//           child: Image.asset(
//             'assets/answer_wrong.jpg',
//             width: MediaQuery.of(context).size.width * 1,
//             height: MediaQuery.of(context).size.height * 1,
//           ),
//         ),
//         onTap: () => MaterialPageRoute(builder: (_) => WinThisGame5()),
//       ),
//     );
//   }
// }

//펑 터지는 애니메이션
// class WinThisGame1 extends StatefulWidget {
//   const WinThisGame1({Key? key}) : super(key: key);

//   @override
//   State<WinThisGame1> createState() => _WinThisGameState1();
// }

// class _WinThisGameState1 extends State<WinThisGame1>
//     with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     FlutterGifController controller = FlutterGifController(
//       vsync: this,
//     );
//     controller.animateTo(
//       18,
//       duration: Duration(milliseconds: 1000),
//     );

//     return Scaffold(
//       body: GestureDetector(
//         child: Center(
//           child: GifImage(
//             controller: controller,
//             image: const AssetImage(
//               'assets/boom.gif',
//             ),
//             width: MediaQuery.of(context).size.width * 1,
//             height: MediaQuery.of(context).size.height * 1,
//           ),
//         ),
//         onTap: () => MaterialPageRoute(builder: (_) => WinThisGame2()),
//       ),
//     );
//   }
// }
