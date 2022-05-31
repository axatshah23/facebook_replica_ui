import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/marketplace_page/components/bottom_sheet_popup.dart';

import '../../../constants.dart';

class ListingButton extends StatefulWidget {
  const ListingButton({Key? key}) : super(key: key);

  @override
  State<ListingButton> createState() => _ListingButtonState();
}

class _ListingButtonState extends State<ListingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      backgroundColor: kSecondaryColor,
      onPressed: () {
        BottomSheetPopUp().bottomSheetPopUp(context);
      },
      label: const Text(
        'Create New Listing',
        style: TextStyle(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
      ),
      icon: const Icon(
        FontAwesomeIcons.penToSquare,
        color: Colors.white,
        size: 20.0,
      ),
    );
  }
}
