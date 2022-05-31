import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/marketplace_page/listing_screens/drop_down/common_drop_down_body.dart';

import 'drop_down.dart';

class DropDownItemBar extends StatefulWidget {
  const DropDownItemBar({Key? key, required this.title, required this.update})
      : super(key: key);
  final String title;
  final void Function(String) update;

  @override
  State<DropDownItemBar> createState() => _DropDownItemBarState(title, update);
}

class _DropDownItemBarState extends State<DropDownItemBar> {
  _DropDownItemBarState(this.title, this.update);
  String title;
  void Function(String) update;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          dropDownPopUp(
            context,
            CommonDropDownBody(
              update: widget.update,
              title: 'Antiques & Collectible',
            ),
          );
          // widget.update(title);
          // Navigator.popUntil(context, ModalRoute.withName('/newItem'));
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16.0),
            ),
            const Icon(
              FontAwesomeIcons.chevronRight,
              size: 16.0,
            )
          ],
        ),
      ),
    );
  }
}
