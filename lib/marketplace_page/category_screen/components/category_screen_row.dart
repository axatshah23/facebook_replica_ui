import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({Key? key, required this.icon, required this.label})
      : super(key: key);
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22.0,
            backgroundColor: kSecondaryColor,
            child: Icon(
              icon,
              color: Colors.white,
              size: 23.0,
            ),
          ),
          const SizedBox(width: 16.0),
          Text(
            label,
            style: const TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
