import 'package:flutter/material.dart';
import 'package:tokutana/Components/confirmBottomButton.dart';
import 'package:tokutana/Pages/HomePage/homePage.dart';
import 'package:tokutana/Widget/processTopSignUp.dart';

class NotificationEnable extends StatefulWidget {
  const NotificationEnable({super.key});

  @override
  State<NotificationEnable> createState() => _NotificationEnableState();
}

class _NotificationEnableState extends State<NotificationEnable> {
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
                    title: '',
                    subtitle: '',
                    alignSubtitle: TextAlign.start),
                const SizedBox(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                      'https://i.pinimg.com/originals/f8/7b/08/f87b08ce60fd954e32d59afd37597919.png'),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        "Enable notification's",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Get push-notification when you get the match or receive a message.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          ConfirmBottomButton(
            visibilityButton: true,
            colorButton: Colors.pink,
            colorText: Colors.white,
            textButton: 'I want to be notified',
            onPressed: () async {
              await Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomePage(),
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
