import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
          radius: 25.0,
        ),
        const SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Axat Shah',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'See your profile',
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ],
    );
  }
}
