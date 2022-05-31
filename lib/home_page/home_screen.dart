import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/widgets/action_buttons.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: const Text(
          'facebook',
          style: kAppBarTitleStyle,
        ),
        actions: const [
          ActionButton(icon: FontAwesomeIcons.magnifyingGlass),
          ActionButton(icon: FontAwesomeIcons.facebookMessenger)
        ],
      ),
      body: const Center(
        child: Text(
          'Home',
          textScaleFactor: 3.0,
        ),
      ),
    );
  }
}
