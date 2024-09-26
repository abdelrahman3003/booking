import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension Navigagtion on BuildContext {
  PageRouteBuilder pageRouteBuilder(Widget route) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => route,
        transitionDuration: const Duration(milliseconds: 600),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-2.0, 0.0); // Start from the left
          const end = Offset.zero; // End at current position
          const curve = Curves.easeInOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        });
  }

  Future<dynamic> push(Widget route, {Object? arguments}) {
    return Navigator.of(this).push(pageRouteBuilder(route));
  }

  Future<dynamic> pushNameed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushAndRemoveUntil(Widget route, {Object? arguments}) {
    return Navigator.of(this)
        .pushAndRemoveUntil(pageRouteBuilder(route), (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
