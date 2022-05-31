import 'package:flutter/material.dart';
import 'package:internship/constants.dart';

class MyAdditionalInfoExpansionButtons extends StatefulWidget {
  const MyAdditionalInfoExpansionButtons(
      {Key? key,
      required this.heading,
      required this.content,
      required this.icon})
      : super(key: key);
  final String heading;
  final String content;
  final IconData icon;

  @override
  State<MyAdditionalInfoExpansionButtons> createState() =>
      _MyAdditionalInfoExpansionButtonsState(heading, content, icon);
}

class _MyAdditionalInfoExpansionButtonsState
    extends State<MyAdditionalInfoExpansionButtons> {
  _MyAdditionalInfoExpansionButtonsState(this.heading, this.content, this.icon);
  final String heading;
  final String content;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: kSecondaryColor,
            child: Icon(
              icon,
              size: 20.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  content,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right_outlined,
            size: 35.0,
          ),
        ],
      ),
    );
  }
}
