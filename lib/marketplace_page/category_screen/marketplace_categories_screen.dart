import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internship/marketplace_page/category_screen/components/category_screen_row.dart';
import 'package:internship/widgets/my_divider.dart';

class MarketplaceCategories extends StatefulWidget {
  const MarketplaceCategories({Key? key}) : super(key: key);

  @override
  State<MarketplaceCategories> createState() => _MarketplaceCategoriesState();
}

class _MarketplaceCategoriesState extends State<MarketplaceCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(12.0, 5.0, 10.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CategoryRow(
                icon: FontAwesomeIcons.locationDot, label: 'Local Listings'),
            CategoryRow(icon: Icons.groups, label: 'Buy and Sell Groups'),
            MyDivider(),
            // Top Category Title
            Text(
              'Top Categories',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
            CategoryRow(icon: FontAwesomeIcons.car, label: 'Vehicles'),
            CategoryRow(
                icon: FontAwesomeIcons.houseCircleCheck, label: 'Rentals'),
            CategoryRow(
                icon: FontAwesomeIcons.venus, label: 'Women Clothing & Shoes'),
            CategoryRow(
                icon: FontAwesomeIcons.mars, label: 'Men Clothing & Shoes'),
            CategoryRow(icon: FontAwesomeIcons.couch, label: 'Furniture'),
            CategoryRow(
                icon: FontAwesomeIcons.mobileScreenButton,
                label: 'Electronics'),
            MyDivider(),
            // All Category Title
            Text(
              'All Categories',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
            CategoryRow(
                icon: FontAwesomeIcons.piedPiper,
                label: 'Antiques & Collectibles'),
            CategoryRow(icon: FontAwesomeIcons.tv, label: 'Appliances'),
            CategoryRow(
                icon: FontAwesomeIcons.paintbrush, label: 'Arts and Craft'),
            CategoryRow(icon: FontAwesomeIcons.gears, label: 'Auto Parts'),
            CategoryRow(icon: FontAwesomeIcons.babyCarriage, label: 'Baby'),
            CategoryRow(
                icon: FontAwesomeIcons.book, label: 'Books, Movies & Music'),
            CategoryRow(
                icon: FontAwesomeIcons.mobileScreenButton,
                label: 'Electronics'),
            CategoryRow(icon: FontAwesomeIcons.couch, label: 'Furniture'),
            CategoryRow(
                icon: FontAwesomeIcons.handsBubbles, label: 'Health & Beauty'),
            CategoryRow(
                icon: FontAwesomeIcons.music, label: 'Musical Instruments'),
            CategoryRow(icon: FontAwesomeIcons.paw, label: 'Pet Supplies'),
            CategoryRow(
                icon: FontAwesomeIcons.football, label: 'Sporting Goods'),
            CategoryRow(icon: FontAwesomeIcons.gamepad, label: 'Toys & Games'),
          ],
        ),
      ),
    );
  }
}
