import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopDiscussion extends StatefulWidget {
  const TopDiscussion({super.key});

  @override
  State<TopDiscussion> createState() => _TopDiscussionState();
}

class _TopDiscussionState extends State<TopDiscussion> {
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Messages',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w600
                ),),
                Container(
                    color: Colors.grey[50],
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
                              CupertinoIcons.slider_horizontal_3,
                              color: Colors.pink,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            );
  }
}