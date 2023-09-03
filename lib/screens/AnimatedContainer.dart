// ignore: file_names
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double height = 50;
  double width = 50;
  Color borderColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            AnimatedContainer(
              curve: Curves.easeIn,
              decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 5),
                color: Colors.green,
              ),
              height: height,
              width: width,
              duration: const Duration(seconds: 1),
            ),
            MaterialButton(
              color: Colors.blue,
              child: const Text('press'),
              onPressed: () {
                setState(() {
                  width = 250;
                  height = 250;
                  borderColor = Colors.purple;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
