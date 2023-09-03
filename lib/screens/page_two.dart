import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  double valero = 0;
  double valero2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Transform.scale(
              scale: 2.0,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          Center(
            child: Transform.scale(
              origin: const Offset(-50, 50),
              scale: valero2,
              child: Container(
                height: 50,
                width: 50,
                color: const Color.fromARGB(255, 148, 135, 19),
              ),
            ),
          ),
          Transform.rotate(
            //the center of the rotate
            origin: const Offset(25, 50),
            angle: valero,
            child: Container(
              height: 100,
              width: 50,
              color: const Color.fromARGB(255, 64, 226, 255),
            ),
          ),
          // Slider(
          //   min: 0.0,
          //   max: 180,
          //   value: valero,
          //   onChanged: (value) {
          //     setState(() {
          //       valero = value;
          //     });
          //   },
          // ),
          // Slider(
          //   min: 0.0,
          //   max: 3,
          //   value: valero2,
          //   onChanged: (value) {
          //     setState(() {
          //       valero2 = value;
          //     });
          //   },
          // ),
          Transform(
            transform: Matrix4.rotationY(3.14 / 4)..scale(2.0),
            origin: const Offset(-50, 50),
            child: Container(
              height: 50,
              width: 50,
              color: const Color.fromARGB(255, 109, 108, 98),
            ),
          ),
        ],
      ),
    );
  }
}
