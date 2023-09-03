import 'package:flutter/material.dart';

//change the size of the page
class AlignTransitionClass extends PageRouteBuilder {
  final page;
  AlignTransitionClass({required this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              return Align(
                alignment: Alignment.center,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: child,
                ),
              );
            });
}

class FadeTransitionClass extends PageRouteBuilder {
  final page;
  FadeTransitionClass({required this.page})
      : super(
            pageBuilder: (context, animation, animationTwo) => page,
            transitionsBuilder: (context, animation, animationTwo, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            });
}
//mix two animation together

class RotationAndScaleClass extends PageRouteBuilder {
  final page;
  RotationAndScaleClass({required this.page})
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
                child: ScaleTransition(scale: curvesAnimation, child: child),
              );
            });
}
