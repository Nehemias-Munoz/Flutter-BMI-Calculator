import 'package:bmi_calculator/screens/widgets/back_container.dart';
import 'package:bmi_calculator/screens/widgets/bottom_button.dart';
import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String resultBmi;
  final String resultText;
  final String interpretation;

  const ResultScreen(
      {Key? key,
      required this.resultBmi,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Your Result'),
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: BackContainer(
                  backColor: kBackContainerColor,
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        resultText,
                        style: TextStyle(
                            fontSize: 30.0,
                            color: resultText != 'Normal'
                                ? Colors.red
                                : Colors.green),
                      ),
                      Text(
                        resultBmi,
                        style: TextStyle(
                            fontSize: 70.0, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        interpretation,
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                ),
              ),
              BottomButton(
                text: 'Re-Calculate',
                onPress: () {
                  Navigator.pushNamed(context, 'home');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
