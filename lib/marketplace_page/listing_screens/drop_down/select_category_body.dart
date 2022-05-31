import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../drop_down/drop_down_item_bar.dart';

class SelectCategoryBody extends StatefulWidget {
  const SelectCategoryBody({
    Key? key,
    required this.update,
  }) : super(key: key);

  final void Function(String) update;

  @override
  State<SelectCategoryBody> createState() => _SelectCategoryBodyState();
}

class _SelectCategoryBodyState extends State<SelectCategoryBody> {
  Widget makeDismissible({required Widget child}) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return makeDismissible(
      child: DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            color: kPopUpBackgroundColor,
          ),
          child: ListView(
            controller: controller,
            children: [
              // Small Line at the top
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 7.5),
                  height: 5.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: kSecondaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              // Title
              const Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Select Category',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Whole line Divider
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xb3444444),
                  ),
                ),
              ),
              // Drop-Down Options
              DropDownItemBar(
                  title: 'Antiques & Collectibles', update: widget.update),
              DropDownItemBar(title: 'Appliances', update: widget.update),
              DropDownItemBar(title: 'Arts & Crafts', update: widget.update),
              DropDownItemBar(title: 'Auto Parts', update: widget.update),
              DropDownItemBar(title: 'Baby', update: widget.update),
              DropDownItemBar(
                  title: 'Books, Movies & Music', update: widget.update),
              DropDownItemBar(title: 'Electronics', update: widget.update),
              DropDownItemBar(title: 'Furniture', update: widget.update),
              DropDownItemBar(title: 'Garage Sale', update: widget.update),
              DropDownItemBar(title: 'Health & beauty', update: widget.update),
              DropDownItemBar(
                  title: 'Home Goods & Decor', update: widget.update),
              DropDownItemBar(
                  title: 'Home Improvement & Tools', update: widget.update),
              DropDownItemBar(
                  title: 'Jewelry & Watches', update: widget.update),
              DropDownItemBar(title: 'Luggage & Bags', update: widget.update),
              DropDownItemBar(
                  title: 'Men\'s clothing & Shoes', update: widget.update),
              DropDownItemBar(title: 'Miscellaneous', update: widget.update),
              DropDownItemBar(
                  title: 'Musical Instruments', update: widget.update),
              DropDownItemBar(title: 'Patio & Garden', update: widget.update),
              DropDownItemBar(title: 'Pet Supplies', update: widget.update),
              DropDownItemBar(title: 'Sporting Goods', update: widget.update),
              DropDownItemBar(title: 'Toys & Games', update: widget.update),
              DropDownItemBar(
                  title: 'Women\'s Clothing and Shoes', update: widget.update),
            ],
          ),
        ),
      ),
    );
  }
}
