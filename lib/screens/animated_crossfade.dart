import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool showFirst = false;
  double fontSize = 14;
  Color textColor = Colors.blue;
  double r = 10;
  double l = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            // AnimatedCrossFade(
            //   firstChild: Container(
            //     width: 200,
            //     height: 200,
            //     color: Colors.black12,
            //   ),
            //   secondChild: Container(
            //     width: 200,
            //     height: 200,
            //     color: const Color.fromARGB(31, 204, 29, 29),
            //   ),
            //   crossFadeState: showFirst
            //       ? CrossFadeState.showFirst
            //       : CrossFadeState.showSecond,
            //   duration: const Duration(seconds: 1),
            //   firstCurve: Curves.bounceInOut,
            //   secondCurve: Curves.bounceOut,
            // ),
            // AnimatedDefaultTextStyle(
            //     style: TextStyle(fontSize: fontSize, color: textColor),
            //     duration: const Duration(seconds: 3),
            //     child: const Text('title')),
            Container(
              width: 300,
              height: 400,
              color: Colors.amberAccent,
              child: Stack(children: [
                AnimatedPositioned(
                  top: l,
                  right: r,
                  left: l,
                  duration: const Duration(seconds: 2),
                  child: Container(
                    height: 50,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            MaterialButton(
              color: Colors.amberAccent,
              onPressed: () {
                setState(() {
                  showFirst = !showFirst;
                  fontSize = 20;
                  textColor = Colors.red;
                  r = 40;
                  l = 20;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
