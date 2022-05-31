import 'package:flutter/material.dart';

import '../../../../../../../constants.dart';

List<String>? getList(label) {
  switch (label) {
    case 'Condition':
    case 'New':
    case 'Used - Like New':
    case 'Used - Good':
    case 'Used - Fair':
      return condition;
    case 'Homes for sale or Rent':
    case 'Sale':
    case 'Rent':
      return saleOrRent;
    case 'Property Type':
    case 'Apartment':
    case 'House':
    case 'Room Only':
    case 'Town House':
      return propertyType;
    case 'Furniture':
    case 'Unfurnished':
    case 'Semi-furnished':
    case 'Furnished':
      return furnitureType;
    case 'Air conditioning type':
    case 'Centrally AC':
    case 'AC Available':
    case 'None':
      return airConditioning;
    case 'Listed By':
    case 'By Owner':
    case 'By Agent':
      return listedBy;
    case 'Antiques & Collectible':
    case 'Antique Jewelry':
    case 'Antique Stamps':
    case 'Antique Furniture':
      return antiques;
  }
  return null;
}

List<String> condition = [
  'New',
  'Used - Like New',
  'Used - Good',
  'Used - Fair',
];
List<String> saleOrRent = [
  'Sale',
  'Rent',
];
List<String> propertyType = [
  'Apartment',
  'House',
  'Room Only',
  'Town House',
];
List<String> furnitureType = [
  'Unfurnished',
  'Semi-furnished',
  'Furnished',
];
List<String> airConditioning = [
  'Centrally AC',
  'AC Available',
  'None',
];
List<String> listedBy = [
  'By Owner',
  'By Agent',
];
List<String> antiques = [
  'Antique Jewelry',
  'Antique Stamps',
  'Antique Furniture',
];

class CommonDropDownBody extends StatefulWidget {
  const CommonDropDownBody({
    Key? key,
    required this.update,
    required this.title,
  }) : super(key: key);

  final void Function(String) update;
  final String title;
  @override
  State<CommonDropDownBody> createState() => _CommonDropDownBodyState(title);
}

class _CommonDropDownBodyState extends State<CommonDropDownBody> {
  _CommonDropDownBodyState(this.title);
  String title;

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
        initialChildSize: 0.25,
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
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  title,
                  style: const TextStyle(
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
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: getList(title)?.length,
                  itemBuilder: (context, index) {
                    final item = getList(title)![index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.update(item);
                          Navigator.pop(context);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item,
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
