import 'package:flutter/material.dart';

class SliderRight extends PageRouteBuilder {
  final page;
  SliderRight({required this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              var begin = const Offset(0, 1);
              var end = const Offset(0, 0);
              var tween = Tween(begin: begin, end: end);
              //  *********normal translation from right to left*********
              // var offsetAnimation = animation.drive(tween);
              var curvesAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
              return SlideTransition(
                position: tween.animate(curvesAnimation),
                child: child,
              );
            });
}

//stated with small and then be large
class ScaleTransitionTest extends PageRouteBuilder {
  final page;
  ScaleTransitionTest({required this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              var begin = 0.2;
              var end = 1.0;
              var tween = Tween(begin: begin, end: end);

              var curvesAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
              return ScaleTransition(
                scale: tween.animate(curvesAnimation),
                child: child,
              );
            });
}

// translation with rotate
class RotationClass extends PageRouteBuilder {
  final page;
  RotationClass({required this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              var begin = 0.0;
              var end = 1.0;
              var tween = Tween(begin: begin, end: end);

              var curvesAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
              return RotationTransition(
                turns: tween.animate(curvesAnimation),
                child: child,
              );
            });
}
