import 'package:flutter/material.dart';

class CommerceProfile extends StatelessWidget {
  const CommerceProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
          radius: 20.0,
        ),
        SizedBox(width: 16.0),
        Text(
          'Commerce Profile',
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}
