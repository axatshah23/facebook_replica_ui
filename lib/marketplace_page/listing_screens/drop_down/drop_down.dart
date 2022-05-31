import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/marketplace_page/listing_screens/drop_down/select_category_body.dart';

import '../../../constants.dart';
import 'common_drop_down_body.dart';

void dropDownPopUp(context, body) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext bc) => body,
  );
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  State<MyDropDown> createState() => _MyDropDownState(value);
}

class _MyDropDownState extends State<MyDropDown> {
  _MyDropDownState(this.value);
  String value;
  void Function(String)? callback(selectedValue) {
    setState(() {
      value = selectedValue;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (value == 'Categories') {
            dropDownPopUp(
              context,
              SelectCategoryBody(
                update: callback,
              ),
            );
          } else {
            dropDownPopUp(
              context,
              CommonDropDownBody(
                update: callback,
                title: value,
              ),
            );
          }
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: kTextFieldOutlineColor, width: 1.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                value,
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                FontAwesomeIcons.caretDown,
                size: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
