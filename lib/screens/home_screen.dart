import 'package:bmi_calculator/screens/widgets/back_container.dart';
import 'package:bmi_calculator/screens/widgets/gender_card.dart';
import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender selectedGender = Gender.female;
  int height = 180;
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
                  Expanded(
                    child: BackContainer(
                      onTap: () => setState(() {
                        selectedGender = Gender.male;
                      }),
                      backColor: selectedGender == Gender.male
                          ? kBackContainerActiveColor
                          : kBackContainerColor,
                      child: GenderCard(
                        iconName: Icons.male,
                        label: 'Male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: BackContainer(
                      onTap: () => setState(() {
                        selectedGender = Gender.female;
                      }),
                      backColor: selectedGender == Gender.female
                          ? kBackContainerActiveColor
                          : kBackContainerColor,
                      child: GenderCard(
                        iconName: Icons.female,
                        label: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BackContainer(
                backColor: kBackContainerColor,
                onTap: () {},
                child: buildHeightSlider(),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: BackContainer(
                      backColor: kBackContainerColor,
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: BackContainer(
                      backColor: kBackContainerColor,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildHeightSlider() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'HEIGHT',
          style: kLabelTextStyle,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              ' cm',
              style: kLabelTextStyle,
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (height == 100.0) {
                    height = height;
                  } else if (height > 100.1) {
                    height = height - 1;
                  }
                });
              },
              icon: Icon(Icons.remove),
            ),
            Expanded(
              child: Slider(
                min: 100.0,
                max: 250.0,
                activeColor: Colors.white,
                label: height.toString(),
                value: height.toDouble(),
                onChanged: (double newValue) {
                  setState(() {
                    height = newValue.toInt();
                  });
                },
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  if (height == 250.0) {
                    height = height;
                  } else if (height < 249.9) {
                    height = height + 1;
                  }
                });
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}
