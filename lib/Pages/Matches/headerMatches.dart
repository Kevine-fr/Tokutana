import 'package:flutter/material.dart';

class HeaderMatches extends StatefulWidget {
  const HeaderMatches({super.key});

  @override
  State<HeaderMatches> createState() => _HeaderMatchesState();
}

class _HeaderMatchesState extends State<HeaderMatches> {
  bool notified = false;
  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Matches',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 34),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              rotationAngle += 1.0;
              notified = !notified;
            });
          },
          child: AnimatedRotation(
            duration: const Duration(milliseconds: 300),
            turns: rotationAngle,
            child: Container(
              padding: const EdgeInsets.all(12.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
                color: 
                notified
                    ? Colors.pink
                    : Colors.white,
              ),
              child: Icon(
                notified
                    ? Icons.notifications_active_outlined
                    : Icons.notifications_off_outlined,
                color: 
                notified
                    ? Colors.white
                    : Colors.pink,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
