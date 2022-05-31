import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Here, various items will be displayed to purchase',
      textScaleFactor: 2.0,
      textAlign: TextAlign.center,
    );
  }
}
