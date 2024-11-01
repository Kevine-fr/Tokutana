import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderHomePage extends StatefulWidget {
  const HeaderHomePage({super.key});

  @override
  State<HeaderHomePage> createState() => _HeaderHomePageState();
}

class _HeaderHomePageState extends State<HeaderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
              ),
            child: const Icon(
              CupertinoIcons.bell,
              color: Colors.pink,
              size: 20,
            ),
          ),
        ),
        Column(
          children: [
            const Text('Discover',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22
            ),
          ),  
            Text('Pointe-Noire',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[800]
            ),)
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
              ),
            child: const Icon(
              CupertinoIcons.slider_horizontal_3,
              color: Colors.pink,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}