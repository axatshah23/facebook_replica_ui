import 'package:flutter/material.dart';

class LocationBar extends StatefulWidget {
  const LocationBar({Key? key}) : super(key: key);

  @override
  State<LocationBar> createState() => _LocationBarState();
}

class _LocationBarState extends State<LocationBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Rajkot · 360002 · ',
          style: TextStyle(fontSize: 18.0),
        ),
        Text(
          'Edit',
          style: TextStyle(color: Colors.blue, fontSize: 18.0),
        )
      ],
    );
  }
}
