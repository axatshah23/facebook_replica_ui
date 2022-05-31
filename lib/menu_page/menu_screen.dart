import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/menu_page/components/profile_bar.dart';
import 'package:internship/menu_page/components/row_card_menu.dart';
import 'package:internship/widgets/action_buttons.dart';

import '../constants.dart';
import '../widgets/my_divider.dart';
import 'components/logout_button.dart';
import 'components/menu_bottom_buttons.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String label = 'See more';
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: const Text(
          'Menu',
          style: kAppBarTitleStyle,
        ),
        actions: const [
          ActionButton(icon: FontAwesomeIcons.gear),
          ActionButton(icon: FontAwesomeIcons.magnifyingGlass),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Photo and Name
              const ProfileBar(),
              // 2. Divider
              const MyDivider(),
              // 3. Shortcut Title
              const Text(
                'All Shortcuts',
                style: TextStyle(fontSize: 16.0),
              ),
              // 4. Some space
              const SizedBox(
                height: 10.0,
              ),
              // 5. Shortcuts in Rows
              const RowCard(FontAwesomeIcons.tv, 'Videos on Watch',
                  FontAwesomeIcons.peopleGroup, 'Groups'),
              const SizedBox(height: 10.0),
              const RowCard(FontAwesomeIcons.clockRotateLeft, 'Memories',
                  FontAwesomeIcons.bookmark, 'Saved'),
              const SizedBox(height: 10.0),
              const RowCard(FontAwesomeIcons.flag, 'Pages',
                  FontAwesomeIcons.film, 'Reels'),
              const SizedBox(height: 10.0),
              const RowCard(FontAwesomeIcons.calendar, 'Events',
                  FontAwesomeIcons.gamepad, 'Gaming'),
              const SizedBox(height: 10.0),
              const RowCard(FontAwesomeIcons.faceSmileBeam, 'Avatars',
                  FontAwesomeIcons.trophy, 'Fantasy Games'),
              const SizedBox(height: 10.0),
              Visibility(
                visible: isVisible,
                child: Column(
                  children: const [
                    RowCard(
                        FontAwesomeIcons.facebookMessenger,
                        'Messenger Kids',
                        FontAwesomeIcons.cloudSunRain,
                        'Weather'),
                    SizedBox(height: 10.0),
                    RowCard(FontAwesomeIcons.heart, 'Dating',
                        FontAwesomeIcons.bagShopping, 'Shop'),
                    SizedBox(height: 10.0),
                    RowCard(FontAwesomeIcons.handHoldingDollar, 'Offers',
                        FontAwesomeIcons.newspaper, 'News'),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (!isVisible) {
                      label = 'See less';
                      isVisible = true;
                    } else {
                      label = 'See more';
                      isVisible = false;
                    }
                  });
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(7.5),
                  //height: kBoxHeight,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(7.5),
                  ),
                  child: Center(
                    child: Text(
                      label,
                      style: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const MyDivider(),
              const MenuBottomButton(
                  FontAwesomeIcons.handshakeAngle, 'Community Resources'),
              const MyDivider(),
              const MenuBottomButton(
                  FontAwesomeIcons.circleInfo, 'Help & Support'),
              const MyDivider(),
              const MenuBottomButton(
                  FontAwesomeIcons.gears, 'Settings & privacy'),
              const MyDivider(),
              const LogOutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
