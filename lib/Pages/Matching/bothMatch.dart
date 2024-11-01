import 'package:flutter/material.dart';
import 'package:tokutana/Pages/Matching/cardMatch.dart';

class BothMatch extends StatefulWidget {
  const BothMatch({super.key});

  @override
  State<BothMatch> createState() => _BothMatchState();
}

class _BothMatchState extends State<BothMatch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 45, right: 45, top: 25),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: const Stack(
              children: [
                CardMatch(top: 0, left: null, right: 0, bottom: null, topIcon: null, leftIcon: null, rightIcon: null, bottomIcon: null, degree: 10, image: 'https://i.pinimg.com/736x/49/09/d6/4909d602afdf55e6392ccd8542fb84c4.jpg'),
                CardMatch(top: 100, left: 0, right: null, bottom: null,  topIcon: null, leftIcon: 0, rightIcon: null, bottomIcon: 0, degree: -10, image: 'https://t3.ftcdn.net/jpg/04/71/45/72/360_F_471457251_zWUubbxxE0fh7xuMUJZZKN8WMOtyBdcs.jpg')
              ],
            ),
          ),
          const SizedBox(height: 25,),
          Center(
            child: Column(
              children: [
                const Text("It's a match, Jake!",
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.w600,
              fontSize: 38
              ),
            ),
            Text("Start a conversation now with each other",
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 15
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}