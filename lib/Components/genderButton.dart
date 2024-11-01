import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final bool selected;

  const GenderButton({
    super.key,
    required this.name,
    required this.icon,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: selected ? Colors.pink : Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: selected ? Colors.pink : Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: selected ? FontWeight.w500 : FontWeight.normal,
                    color: selected ? Colors.white : Colors.black,
                  ),
                ),
                Icon(
                  icon,
                  color: selected ? Colors.white : Colors.grey,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
