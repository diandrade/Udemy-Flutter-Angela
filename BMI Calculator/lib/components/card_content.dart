import 'package:flutter/material.dart';
import '../constants.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key, required this.icon, required this.label
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle
        )
      ],
    );
  }
}