import 'package:flutter/material.dart';
import 'hover.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 24, 3, 58),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "CiRA",
            style: TextStyle(
              color: Color.fromARGB(255, 233, 227, 227),
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnHover(
                  builder: (isHovered) => IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook_outlined,
                      color: isHovered ? Colors.blueAccent : Colors.white,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.copyright_outlined,
                color: Colors.white70,
                size: 16,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "2022 CiRA Robotics",
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
