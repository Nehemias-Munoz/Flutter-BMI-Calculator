import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.text, required this.onPress})
      : super(key: key);

  final String text;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100.0,
      width: double.infinity,
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
