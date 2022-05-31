import 'package:flutter/material.dart';

import '../../constants.dart';

class MenuBottomButton extends StatelessWidget {
  const MenuBottomButton(this.icon, this.label);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 10.0),
        Icon(icon),
        const SizedBox(width: 30.0),
        Text(
          label,
          style: kMenuLabelStyle,
        ),
      ],
    );
  }
}
