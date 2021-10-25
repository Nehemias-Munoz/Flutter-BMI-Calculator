import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    Key? key,
    required this.iconName,
    required this.label,
  }) : super(key: key);

  final IconData iconName;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            iconName,
            size: 100.0,
          ),
          Text(
            label.toUpperCase(),
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
