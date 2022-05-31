import 'package:flutter/material.dart';

class MyCustomTab extends StatelessWidget {
  const MyCustomTab({Key? key, required this.label, required this.isSelected})
      : super(key: key);

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14.0,
          color: isSelected ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
