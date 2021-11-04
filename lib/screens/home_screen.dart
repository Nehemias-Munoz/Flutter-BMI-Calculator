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
  int weight = 70;
  int age = 30;
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: kNumberTextStyle,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text('kg')
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                enableFeedback: true,
                                onPressed: () {
                                  setState(() {
                                    if (weight == 10) {
                                      weight = weight;
                                    } else if (weight > 10) {
                                      weight--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                              IconButton(
                                enableFeedback: true,
                                onPressed: () {
                                  setState(() {
                                    if (weight == 300) {
                                      weight = weight;
                                    } else if (weight < 299) {
                                      weight++;
                                    }
                                  });
                                },
                                icon: Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BackContainer(
                      backColor: kBackContainerColor,
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  age.toString(),
                                  style: kNumberTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                enableFeedback: true,
                                onPressed: () {
                                  setState(() {
                                    if (age == 10) {
                                      age = age;
                                    } else if (age > 10) {
                                      age--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                              IconButton(
                                enableFeedback: true,
                                onPressed: () {
                                  setState(() {
                                    if (age == 130) {
                                      age = age;
                                    } else if (age < 129) {
                                      age++;
                                    }
                                  });
                                },
                                icon: Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),
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
              enableFeedback: true,
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
              enableFeedback: true,
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
