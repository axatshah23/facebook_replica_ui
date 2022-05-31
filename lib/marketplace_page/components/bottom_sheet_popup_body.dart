import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import 'bottom_sheet_popup.dart';

class BottomSheetPopUpBody extends StatefulWidget {
  const BottomSheetPopUpBody({Key? key}) : super(key: key);

  @override
  State<BottomSheetPopUpBody> createState() => _BottomSheetPopUpBodyState();
}

class _BottomSheetPopUpBodyState extends State<BottomSheetPopUpBody> {
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
        initialChildSize: 0.35,
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
              SizedBox(height: 15.0),
              // Title
              const Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  'Create New Listing',
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
                      decoration:
                          const BoxDecoration(color: Color(0xb3444444)))),
              // Listing Options
              // 1. Items
              BottomSheetBar(
                icon: FontAwesomeIcons.bagShopping,
                label: 'Items',
                onTap: () {
                  Navigator.pushNamed(context, '/newItem');
                },
              ),
              // 2. Vehicles
              BottomSheetBar(
                icon: FontAwesomeIcons.car,
                label: 'Vehicles',
                onTap: () {
                  Navigator.pushNamed(context, '/newVehicle');
                },
              ),
              // 3. Homes for rent
              BottomSheetBar(
                icon: FontAwesomeIcons.house,
                label: 'Homes for Sale or Rent',
                onTap: () {
                  Navigator.pushNamed(context, '/newProperty');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
