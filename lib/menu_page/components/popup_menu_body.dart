import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../../widgets/bottom_navbar.dart';

class PopUpMenuBody extends StatefulWidget {
  const PopUpMenuBody(
      {Key? key,
      required this.context,
      required this.icon,
      required this.label})
      : super(key: key);
  final BuildContext context;
  final IconData icon;
  final String label;

  @override
  State<PopUpMenuBody> createState() =>
      _PopUpMenuBodyState(context, icon, label);
}

class _PopUpMenuBodyState extends State<PopUpMenuBody> {
  _PopUpMenuBodyState(this.context, this.icon, this.label);
  final BuildContext context;
  final IconData icon;
  final String label;
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
        initialChildSize: 0.3,
        maxChildSize: 1.0,
        builder: (_, controller) => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            color: kPopUpBackgroundColor,
          ),
          child: ListView(
            controller: controller,
            children: [
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
              Icon(
                icon,
                size: 36.0,
              ),
              const SizedBox(height: 15.0),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15.0),
              Container(
                height: 1.0,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xb3444444)),
              ),
              const SizedBox(height: 15.0),
              GestureDetector(
                onTap: () {
                  addToNavBar(context, icon, label);
                  Navigator.pop(context);
                  Navigator.popAndPushNamed(context, '/reset').then((value) {
                    setState(() {});
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        FontAwesomeIcons.thumbtack,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Pin to navigation bar',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      FontAwesomeIcons.bellSlash,
                      size: 20.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Turn off notification dots',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
