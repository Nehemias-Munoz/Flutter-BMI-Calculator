import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

class BackContainer extends StatelessWidget {
  const BackContainer({Key? key, this.child, this.backColor}) : super(key: key);
  final Widget? child;
  final Color? backColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backColor != null ? backColor : kBackContainerColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(15.0),
      child: Center(
        child: child,
      ),
    );
  }
}
