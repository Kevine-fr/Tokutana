import 'package:flutter/material.dart';
import 'package:tokutana/Components/confirmBottomButton.dart';
import 'package:tokutana/Pages/Matching/bothMatch.dart';

class Matching extends StatefulWidget {
  const Matching({super.key});

  @override
  State<Matching> createState() => _MatchingState();
}

class _MatchingState extends State<Matching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.transparent,
          )
        ),
      body: Stack(
        children: [
          const BothMatch(),
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Visibility(
                visible: true,
                child: GestureDetector(
                  onTap: () {}, // Appel de la fonction de redirection
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink,
                    ),
                    child: const Center(
                      child: Text(
                        'Say hello',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ConfirmBottomButton(
              visibilityButton: true,
              colorButton: const Color.fromARGB(255, 234, 196, 209),
              colorText: Colors.pink,
              textButton: 'Keep swiping',
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
