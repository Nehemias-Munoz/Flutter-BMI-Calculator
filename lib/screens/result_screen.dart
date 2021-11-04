import 'package:bmi_calculator/screens/widgets/back_container.dart';
import 'package:bmi_calculator/screens/widgets/bottom_button.dart';
import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

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
                        'Normal',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(
                        '100',
                        style: TextStyle(
                            fontSize: 70.0, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'Quis Lorem voluptate laboris consectetur sit ut enim non sint. Voluptate officia eiusmod voluptate ad non id ullamco non sint ex velit. Enim occaecat labore magna anim.',
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
