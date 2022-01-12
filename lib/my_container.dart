import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget? child;
  final Function()? onPressxx;

  MyContainer({this.renk = Colors.white, this.child, this.onPressxx});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressxx,
      child: Container(
        child: child,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0), color: renk),
      ),
    );
  }
}
