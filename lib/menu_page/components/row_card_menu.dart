import 'package:flutter/material.dart';
import 'package:internship/menu_page/components/popup_menu_body.dart';

import '../../constants.dart';

class RowCard extends StatefulWidget {
  const RowCard(this.icon1, this.label1, this.icon2, this.label2);

  final IconData icon1;
  final IconData icon2;
  final String label1;
  final String label2;

  @override
  State<RowCard> createState() => _RowCardState(icon1, label1, icon2, label2);
}

class _RowCardState extends State<RowCard> {
  _RowCardState(this.icon1, this.label1, this.icon2, this.label2);
  final IconData icon1;
  final IconData icon2;
  final String label1;
  final String label2;

  void PopUpMenu(context, IconData icon, String label) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) => PopUpMenuBody(
        context: context,
        icon: icon,
        label: label,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onLongPress: () {
              PopUpMenu(context, icon1, label1);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              padding: const EdgeInsets.all(15.0),
              height: kBoxHeight,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon1),
                  const SizedBox(height: 3.0),
                  Text(
                    label1,
                    style: kMenuLabelStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onLongPress: () {
              PopUpMenu(context, icon2, label2);
            },
            child: Container(
              padding: const EdgeInsets.all(15.0),
              height: kBoxHeight,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon2),
                  const SizedBox(height: 3.0),
                  Text(
                    label2,
                    style: kMenuLabelStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
