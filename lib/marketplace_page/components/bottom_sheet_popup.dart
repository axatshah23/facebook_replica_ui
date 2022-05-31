import 'package:flutter/material.dart';
import 'package:internship/marketplace_page/components/bottom_sheet_popup_body.dart';

import '../../constants.dart';

class BottomSheetPopUp {
  void bottomSheetPopUp(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) => BottomSheetPopUpBody(),
    );
  }
}

class BottomSheetBar extends StatelessWidget {
  const BottomSheetBar(
      {Key? key, required this.icon, required this.label, required this.onTap})
      : super(key: key);
  final IconData icon;
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: kSecondaryColor,
              child: Icon(
                icon,
                size: 23.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 22.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
