import 'package:bmi_calculator/screens/widgets/back_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: BackContainer()),
                  Expanded(child: BackContainer()),
                ],
              ),
            ),
            Expanded(child: BackContainer()),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: BackContainer()),
                  Expanded(child: BackContainer()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
