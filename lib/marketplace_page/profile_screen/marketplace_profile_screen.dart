import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/constants.dart';
import 'package:internship/marketplace_page/profile_screen/components/create_listing_button.dart';
import 'package:internship/widgets/my_divider.dart';

import 'components/commerce_profile.dart';
import 'components/profile_screen_row.dart';

class MarketplaceProfile extends StatefulWidget {
  const MarketplaceProfile({Key? key}) : super(key: key);

  @override
  State<MarketplaceProfile> createState() => _MarketplaceProfileState();
}

class _MarketplaceProfileState extends State<MarketplaceProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'You',
          style: kAppBarTitleStyle,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(FontAwesomeIcons.bell),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(12.0, 15.0, 10.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Button
            SizedBox(
              width: double.infinity,
              child: ListingButton(),
            ),
            SizedBox(height: 15.0),
            // Commerce Profile
            CommerceProfile(),
            ProfileRow(icon: FontAwesomeIcons.inbox, label: 'Inbox'),
            ProfileRow(icon: FontAwesomeIcons.locationDot, label: 'Location'),
            ProfileRow(icon: FontAwesomeIcons.shirt, label: 'Your sizes'),
            MyDivider(),
            Text(
              'Selling',
              style: kTitleTextStyle,
            ),
            ProfileRow(icon: FontAwesomeIcons.tag, label: 'Your Listings'),
            ProfileRow(icon: FontAwesomeIcons.chartColumn, label: 'Insights'),
            ProfileRow(
                icon: FontAwesomeIcons.boltLightning, label: 'Quick Actions'),
            MyDivider(),
            Text(
              'Buying',
              style: kTitleTextStyle,
            ),
            ProfileRow(icon: FontAwesomeIcons.bookmark, label: 'Saved'),
            ProfileRow(
                icon: FontAwesomeIcons.usersRectangle, label: 'Following'),
            ProfileRow(icon: FontAwesomeIcons.clock, label: 'Recently Viewed'),
            MyDivider(),
            Text(
              'More',
              style: kTitleTextStyle,
            ),
            ProfileRow(icon: FontAwesomeIcons.gear, label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
