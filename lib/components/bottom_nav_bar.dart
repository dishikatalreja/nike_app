import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({Key? key,required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:20 ),
        child: GNav(
            color: Colors.grey[400],
            activeColor: Colors.grey[700],
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade300,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 16,
            gap: 8,
            onTabChange: (value) => onTabChange!(value),

            tabs:const[
          GButton(
            icon: Icons.home,
          backgroundColor: Colors.white,
          text: 'Shop'),
          GButton(icon: Icons.shopping_bag_rounded,
          text: 'Cart',
          backgroundColor: Colors.white,)
        ],
        ),
      ),
    );
  }
}
