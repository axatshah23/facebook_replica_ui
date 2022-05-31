import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/constants.dart';
import 'package:internship/marketplace_page/listing_screens/components/image_input_field.dart';
import 'package:internship/marketplace_page/listing_screens/components/listing_profile.dart';
import 'package:internship/marketplace_page/listing_screens/components/location_selection_field.dart';
import 'package:internship/marketplace_page/listing_screens/components/my_text_field.dart';
import 'package:internship/marketplace_page/listing_screens/components/toggle_buttons.dart';
import 'package:internship/widgets/my_divider.dart';

import 'components/multiselect_chips.dart';
import 'drop_down/drop_down.dart';

class NewProperty extends StatefulWidget {
  const NewProperty({Key? key}) : super(key: key);

  @override
  State<NewProperty> createState() => _NewPropertyState();
}

class _NewPropertyState extends State<NewProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Listing'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Publish',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Bar
            const ListingProfile(),
            const SizedBox(height: 15.0),
            // Take image as input
            const ImageInputField(),
            // Number of image as input text
            const Text(
              'Photos: 0/50 · Choose your main photo and supporting images to best showcase the property you\'re listing.',
              style: TextStyle(fontSize: 12.5),
            ),
            const SizedBox(height: 15.0),
            const MyDropDown(value: 'Homes for sale or Rent'),
            const SizedBox(height: 15.0),
            const MyTextField(label: 'Title', keyboard: TextInputType.name),
            const SizedBox(height: 15.0),
            const MyDropDown(value: 'Property Type'),
            const SizedBox(height: 15.0),
            const MyTextField(
                label: 'Bedrooms', keyboard: TextInputType.number),
            const SizedBox(height: 15.0),
            const MyTextField(
                label: 'Bathrooms', keyboard: TextInputType.number),
            const SizedBox(height: 15.0),
            const LocationSelector(),
            const MyToggleButton(
                heading: 'Hide Address',
                content:
                    'Keep Property Address Private We\nwon\'t show the exact address. The\nexact address helps us verify and list\nyour property so people can find it.\nYou can change this choice.',
                icon: FontAwesomeIcons.ban),
            const SizedBox(height: 15.0),
            const MyTextField(
                label: 'Property Description',
                keyboard: TextInputType.multiline),
            const MyDivider(),
            const Text(
              'Advanced Details',
              style: kAppBarTitleStyle,
            ),
            const SizedBox(height: 6.0),
            const Text(
              'Optional',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 15.0),
            const MyTextField(
                label: 'Built up Area (Square feet)',
                keyboard: TextInputType.number),
            const SizedBox(height: 15.0),
            const MyTextField(
                label: 'Carpet Area (Square feet)',
                keyboard: TextInputType.number),
            const SizedBox(height: 15.0),
            const MyDropDown(value: 'Furniture'),
            const SizedBox(height: 15.0),
            const MyToggleButton(
                heading: 'Parking',
                content: 'Enable if parking space is provided.',
                icon: FontAwesomeIcons.squareParking),
            const SizedBox(height: 15.0),
            const MyDropDown(value: 'Air conditioning type'),
            const SizedBox(height: 15.0),
            const MyDropDown(value: 'Listed By'),
            const SizedBox(height: 15.0),
            const Text(
              'Amenities',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8.0),
            MultiSelectChip(
              MultiSelectList().reportList,
              onSelectionChanged: (selectedList) {
                setState(() {
                  MultiSelectList().selectedReportList = selectedList;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'By, Posting, you confirm this listing compiles with Facebook\'s Commerce Policies and all applicable laws, including anti-discrimination laws.'),
            ),
          ],
        ),
      ),
    );
  }
}
