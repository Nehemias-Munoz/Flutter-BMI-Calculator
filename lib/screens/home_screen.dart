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
}
