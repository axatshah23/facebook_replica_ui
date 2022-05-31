import 'package:flutter/material.dart';

import '../../../constants.dart';

class MultiSelectList {
  List<String> reportList = [
    'Balcony',
    'Basement',
    'Bike Parking',
    'Cable TV',
    'Ceiling Fan',
    'Concierge',
    'Dishwasher',
    'Doorman',
    'Elevator',
    'Fireplace',
    'Fitness Center',
    'Garbage Disposal',
    'Microwave',
    'Online Application',
    'Oven',
    'Package Service',
    'Patio',
    'Pet Park',
    'Refrigerator',
    'Resident Lounge',
    'Roof Deck',
    'Secured Entry',
    'Storage',
    'Swimming Pool',
    'Walk-in Closet',
    'Wheelchair Access'
  ];

  List<String> selectedReportList = [];
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged; // +added
  const MultiSelectChip(this.reportList,
      {Key? key, required this.onSelectionChanged} // +added
      )
      : super(key: key);
  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";

  List<String> selectedChoices = [];
  _buildChoiceList() {
    List<Widget> choices = [];
    widget.reportList.forEach(
      (item) {
        choices.add(
          Container(
            padding: const EdgeInsets.only(left: 3.0, right: 3.0),
            child: ChoiceChip(
              label: Text(item),
              labelStyle: const TextStyle(fontSize: 16.0, color: Colors.white),
              //avatar: icon,
              selected: selectedChoices.contains(item),
              disabledColor: kSecondaryColor,
              selectedColor: Colors.blueAccent,
              onSelected: (selected) {
                setState(
                  () {
                    // toggle between selected and unselected
                    selectedChoices.contains(item)
                        ? selectedChoices.remove(item)
                        : selectedChoices.add(item);

                    widget.onSelectionChanged(selectedChoices);
                    // +added
                  },
                );
              },
            ),
          ),
        );
      },
    );
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
