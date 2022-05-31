import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListingProfile extends StatefulWidget {
  const ListingProfile({Key? key}) : super(key: key);

  @override
  State<ListingProfile> createState() => _ListingProfileState();
}

class _ListingProfileState extends State<ListingProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
          radius: 25.0,
        ),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Axat Shah',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: const [
                Text(
                  'Listing on Marketplace · ',
                  style: TextStyle(fontSize: 12.5),
                ),
                Icon(
                  FontAwesomeIcons.shop,
                  size: 10,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
