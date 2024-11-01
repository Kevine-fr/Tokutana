import 'package:flutter/material.dart';
import 'package:tokutana/Pages/HomePage/footerHomePage.dart';
import 'package:tokutana/Pages/Matches/bodyMatches.dart';
import 'package:tokutana/Pages/Matches/headerMatches.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.transparent,
        ),
      ),
      bottomNavigationBar: const FooterHomePage(idPage: 1,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 45, top: 15, right: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderMatches(),
              const SizedBox(height: 10,),
              Text('This is a list of people who have liked you and your matches.',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.w400,
                fontSize: 14
                ),
              ),
              SizedBox(height: 20,),
              BodyMatches(),

            ],
          ),
        ),
      ),
    );
  }
}
