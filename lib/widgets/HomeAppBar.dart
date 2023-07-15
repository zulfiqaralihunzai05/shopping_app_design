import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as Badge;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "DP Shop",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          Badge.Badge(
              badgeAnimation: const Badge.BadgeAnimation.slide(),
              badgeStyle: const Badge.BadgeStyle(
                badgeColor: Colors.red,
                padding: EdgeInsets.all(4)
              ),
              badgeContent: const Text(
                '3',
                style: TextStyle(color: Colors.white),

              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "cartPage");
                },
                child: const Icon(Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xFF4C53A5),
                ),
              )),
        ],
      ),
    );
  }
}
