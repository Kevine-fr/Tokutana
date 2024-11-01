import 'package:flutter/material.dart';

class ArrowBack extends StatefulWidget {
  const ArrowBack({super.key});

  @override
  State<ArrowBack> createState() => _ArrowBackState();
}

class _ArrowBackState extends State<ArrowBack> {
  @override
  Widget build(BuildContext context) {
    return Container(
                color: Colors.grey[50],
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.pink,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              );
  }
}