import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarDiscussion extends StatefulWidget {
  const SearchBarDiscussion({super.key});

  @override
  State<SearchBarDiscussion> createState() => _SearchBarDiscussionState();
}

class _SearchBarDiscussionState extends State<SearchBarDiscussion> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(
          CupertinoIcons.search,
          color: Colors.grey,),
        hintText: 'Search',
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        fillColor: Colors.grey,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.pink)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
