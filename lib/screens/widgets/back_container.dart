import 'package:flutter/material.dart';

class BackContainer extends StatelessWidget {
  const BackContainer(
      {Key? key, this.child, this.backColor, required this.onTap})
      : super(key: key);
  final Widget? child;
  final Color? backColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
