import 'package:flutter/material.dart';
import '../constants.dart';

class CardInfo extends StatelessWidget {
  final IconData awesomeIcons;
  final String label;

  CardInfo({required this.awesomeIcons, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          awesomeIcons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
