import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/constants.dart';
import 'package:internship/marketplace_page/listing_screens/components/additional_info_expansion_buttons.dart';
import 'package:internship/marketplace_page/listing_screens/components/image_input_field.dart';
import 'package:internship/marketplace_page/listing_screens/components/listing_profile.dart';
import 'package:internship/marketplace_page/listing_screens/components/my_text_field.dart';
import 'package:internship/marketplace_page/listing_screens/components/toggle_buttons.dart';
import 'package:internship/widgets/my_divider.dart';

import 'components/location_bar.dart';
import 'drop_down/drop_down.dart';

class NewItem extends StatefulWidget {
  const NewItem({Key? key}) : super(key: key);

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
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
          children: const [
            // Profile Bar
            ListingProfile(),
            SizedBox(height: 15.0),
            // Take image as input
            ImageInputField(),
            // Number of image as input text
            Text(
              'Photos: 0/10 · Choose your listing\'s main photo first',
              style: TextStyle(fontSize: 13.5),
            ),
            SizedBox(height: 15.0),
            // Title field
            MyTextField(
              label: 'Title',
              keyboard: TextInputType.name,
            ),
            SizedBox(height: 15.0),
            // Price Field
            MyTextField(
              label: 'Price',
              keyboard: TextInputType.number,
            ),
            SizedBox(height: 15.0),
            // Category Dropdown
            MyDropDown(value: 'Categories'),
            SizedBox(height: 15.0),
            // Condition Dropdown
            MyDropDown(value: 'Condition'),
            SizedBox(height: 15.0),
            // Description field
            MyTextField(
              label: 'Description',
              keyboard: TextInputType.name,
            ),
            SizedBox(height: 5.0),
            Text(
              'Optional',
              style: TextStyle(fontSize: 13.5),
            ),
            MyDivider(),
            // Location
            Text(
              'Location',
              style: kAppBarTitleStyle,
            ),
            LocationBar(),
            MyDivider(),
            // Listing Options
            Text(
              'Listing Options',
              style: kAppBarTitleStyle,
            ),
            Text(
              'More Ways to help you sell',
              style: TextStyle(fontSize: 16.0),
            ),
            MyToggleButton(
              heading: 'Hide from Friends',
              content:
                  'This Listing will be hidden from your \nFacebook friends but visible to other \npeople on Facebook.',
              icon: FontAwesomeIcons.lock,
            ),
            MyToggleButton(
              heading: 'Boost listing after publishing',
              content:
                  'Add a step to boost your listing after\nif publishes, to help you reach more \npotential buyers by turning it into an ad.',
              icon: FontAwesomeIcons.rocket,
            ),
            MyAdditionalInfoExpansionButtons(
                heading: 'List in more places',
                content:
                    'Reach more buyers by listing on your\nprofile or in groups',
                icon: FontAwesomeIcons.shop),
            MyAdditionalInfoExpansionButtons(
                heading: 'Additional listing options',
                content: 'Change quantity, add variants, and more..',
                icon: FontAwesomeIcons.circlePlus),
            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Marketplace items are public and can be seen by anyone on or off Facebook.\n\nAll listings go through a quick standard review when published to make sure they follow our Commerce Policies before they are visible to others. Items like animals, drugs, weapons, counterfeits and more are not allowed'),
            ),
          ],
        ),
      ),
    );
  }
}
