import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokutana/Pages/Discussion/ListDiscussion.dart';
import 'package:tokutana/Pages/Discussion/searchBarDiscussion.dart';
import 'package:tokutana/Pages/Discussion/topDiscussion.dart';
import 'package:tokutana/Pages/HomePage/footerHomePage.dart';

class Discussion extends StatefulWidget {
  const Discussion({super.key});

  @override
  State<Discussion> createState() => _DiscussionState();
}

class _DiscussionState extends State<Discussion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
        ),
      ),
      bottomNavigationBar: const FooterHomePage(idPage: 2,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              TopDiscussion(),
              SizedBox(height: 20,),
              SearchBarDiscussion(),
              SizedBox(height: 20,),
              Text('Discussions',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20
                ),
              ),
              SizedBox(height: 15,),
              ListDiscussion(),
            ],
          ),
        ),
      ),
    );
  }
}

