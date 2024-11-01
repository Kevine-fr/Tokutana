import 'package:flutter/material.dart';
import 'package:tokutana/Components/confirmBottomButton.dart';
import 'package:tokutana/Components/genderButton.dart';
import 'package:tokutana/Pages/SignUp/genderAttirance.dart';
import 'package:tokutana/Widget/processTopSignUp.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false, 
          elevation: 0, 
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProcessTopSignUp(
                    icon: true,
                    skip: true,
                    title: 'I am a',
                    subtitle: '',
                    alignSubtitle: TextAlign.start),
                const SizedBox(
                  height: 65,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: GenderButton(
                    name: 'Woman',
                    icon: Icons.check,
                    selected: selectedIndex == 1, 
                  ),
                ),
                const SizedBox(
                  height: 12.5,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2; 
                    });
                  },
                  child: GenderButton(
                    name: 'Man',
                    icon: Icons.check,
                    selected: selectedIndex == 2, 
                  ),
                ),
                const SizedBox(
                  height: 12.5,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3; 
                    });
                  },
                  child: GenderButton(
                    name: 'Choose another',
                    icon: Icons.arrow_forward_ios_rounded,
                    selected: selectedIndex == 3, 
                  ),
                ),
              ],
            ),
          ),
          ConfirmBottomButton(
            visibilityButton: true,
            colorButton: Colors.pink,
            colorText: Colors.white,
            textButton: 'Continue',
             onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const GenderAttirance(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    var begin = const Offset(1.0, 0.0);
                    var end = Offset.zero;
                    var curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));

                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
