import 'package:flutter/material.dart';
import 'package:bmi_calculator/utils/constants.dart';

class BackContainer extends StatelessWidget {
  // Creamos un Constructor para cambiar propiedades
  final Widget? child;
  final Color? backColor;
  BackContainer({this.backColor, this.child})
      : assert(backColor == null || false);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: kBackContainerColor,
        ),
        padding: EdgeInsets.all(15.0),
      ),
    );
  }
}
