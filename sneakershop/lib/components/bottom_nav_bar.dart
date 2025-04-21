import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade800,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
            borderRadius: BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.circular(50),
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(50)),
          ),
          GButton(
            icon: Icons.shopping_cart_outlined,
            text: "Cart",
            borderRadius: BorderRadius.only(
                topRight: Radius.zero,
                topLeft: Radius.circular(50),
                bottomRight: Radius.zero,
                bottomLeft: Radius.circular(50)),
          )
        ]);
  }
}
