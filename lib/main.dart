import 'package:flutter/material.dart';
import 'package:internship/marketplace_page/category_screen/marketplace_categories_screen.dart';
import 'package:internship/marketplace_page/listing_screens/new_listing_items.dart';
import 'package:internship/marketplace_page/listing_screens/new_listing_property.dart';
import 'package:internship/marketplace_page/profile_screen/marketplace_profile_screen.dart';
import 'package:internship/widgets/bottom_navbar.dart';

import 'marketplace_page/listing_screens/new_listing_vehicles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/reset': (context) => const BottomNavBar(),
        '/marketplaceCategories': (context) => const MarketplaceCategories(),
        '/marketplaceProfile': (context) => const MarketplaceProfile(),
        '/newItem': (context) => const NewItem(),
        '/newVehicle': (context) => const NewVehicle(),
        '/newProperty': (context) => const NewProperty(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const BottomNavBar(),
    );
  }
}
