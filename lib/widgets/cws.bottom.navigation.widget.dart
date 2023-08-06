import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final String route;
  final IconData icon;
  const BottomNavigation({super.key, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(icon),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, route);
            },
          ),
        ),
      ],
    );
  }
}
