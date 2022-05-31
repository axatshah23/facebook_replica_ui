import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/constants.dart';
import 'package:internship/marketplace_page/components/bottom_sheet_popup.dart';
import 'package:internship/marketplace_page/shop.dart';
import 'package:internship/widgets/action_buttons.dart';

import '../widgets/my_divider.dart';
import 'components/top_buttons.dart';

class Marketplace extends StatefulWidget {
  const Marketplace({Key? key}) : super(key: key);

  @override
  State<Marketplace> createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace', style: kAppBarTitleStyle),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/marketplaceProfile');
            },
            child: const ActionButton(icon: FontAwesomeIcons.user),
          ),
          const ActionButton(icon: FontAwesomeIcons.magnifyingGlass)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: kPageStartPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // 1. Top Category Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Sell Button
                  TopButton(
                    onTap: () {
                      BottomSheetPopUp().bottomSheetPopUp(context);
                    },
                    label: 'Sell',
                    icon: FontAwesomeIcons.penToSquare,
                  ),
                  const SizedBox(width: 10.0),
                  // Categories Button
                  TopButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/marketplaceCategories');
                      },
                      label: 'Categories',
                      icon: FontAwesomeIcons.list),
                ],
              ),
              // 2. Divider
              const MyDivider(),
              // 3. Shop continues from here
              const Shop(),
            ],
          ),
        ),
      ),
    );
  }
}
