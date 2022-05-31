import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, required this.label, required this.keyboard})
      : super(key: key);
  final String label;
  final TextInputType keyboard;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kTextFieldOutlineColor, width: 1.0),
        ),
        labelStyle: const TextStyle(color: Colors.white),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintText: label,
        labelText: label,
      ),
      keyboardType: keyboard,
    );
  }
}
