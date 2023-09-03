import 'package:animation_app/classes/animation2.dart';
import 'package:animation_app/screens/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(
              RotationAndScaleClass(
                page: const PageTwo(),
              ),
            );
          },
          child: const Text('press'),
        ),
      ),
    );
  }
}
