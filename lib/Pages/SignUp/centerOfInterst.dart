import 'package:flutter/material.dart';
import 'package:tokutana/Components/confirmBottomButton.dart';
import 'package:tokutana/Pages/SignUp/notificationEnable.dart';
import 'package:tokutana/Widget/listCenterOfInterst.dart';
import 'package:tokutana/Widget/processTopSignUp.dart';

class CenterOfInterest extends StatefulWidget {
  const CenterOfInterest({super.key});

  @override
  State<CenterOfInterest> createState() => _CenterOfInterestState();
}

class _CenterOfInterestState extends State<CenterOfInterest> {
  
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: const ProcessTopSignUp(
                    icon: true,
                    skip: true,
                    title: 'Your interests',
                    subtitle: "Select a few of your interests and let everyone know what you're passionate about",
                    alignSubtitle: TextAlign.start),
              ),
              const SizedBox(
                height: 25,
              ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.525,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const ListCenterOfInterst())
            ],
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
                      const NotificationEnable(),
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
