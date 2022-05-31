import 'package:flutter/material.dart';

import '../../constants.dart';

class TopButton extends StatelessWidget {
  const TopButton(
      {Key? key, required this.label, required this.icon, required this.onTap})
      : super(key: key);
  final String label;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          decoration: BoxDecoration(
              color: kCategoryButtonColor,
              borderRadius: BorderRadius.circular(24.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18.0,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
