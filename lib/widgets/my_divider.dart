import 'package:flutter/material.dart';
import 'package:internship/constants.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15.0),
        Container(
          height: 2.0,
          width: double.infinity,
          decoration: const BoxDecoration(color: kSecondaryColor),
        ),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
