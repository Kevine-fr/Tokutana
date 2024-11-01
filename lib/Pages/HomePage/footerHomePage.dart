import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokutana/Pages/Discussion/discussion.dart';
import 'package:tokutana/Pages/HomePage/homePage.dart';
import 'package:tokutana/Pages/Matches/matches.dart';

class FooterHomePage extends StatefulWidget {
  final int idPage;
  const FooterHomePage({super.key, required this.idPage});

  @override
  State<FooterHomePage> createState() => _FooterHomePageState();
}

class _FooterHomePageState extends State<FooterHomePage> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.idPage;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey[200],
      shape: const CircularNotchedRectangle(),
      notchMargin: 10.0,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.rectangle_fill_on_rectangle_angled_fill,
                color: _selectedIndex == 0
                    ? Colors.redAccent
                    : Colors.grey, 
                size: 30,
              ),
              onPressed: () {
                _onItemTapped(0);
                widget.idPage == 0
                    ? null
                    : Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const HomePage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(-1.0, 0.0);
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
            IconButton(
              icon: Icon(
                Icons.favorite_rounded,
                color: _selectedIndex == 1
                    ? Colors.redAccent
                    : Colors.grey, // Actif si index = 1
                size: 30,
              ),
              onPressed: () {
                _onItemTapped(1);
                if (widget.idPage == 1) {
                  return;
                }
                else if(widget.idPage < 1){
                 Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const Matches(),
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
                }
                else {
                   Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const Matches(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(-1.0, 0.0);
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
                }
              },
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.chat_bubble_2_fill,
                color: _selectedIndex == 2
                    ? Colors.redAccent
                    : Colors.grey, // Actif si index = 2
                size: 30,
              ),
              onPressed: () {
                _onItemTapped(2);
                if (widget.idPage == 2) {
                  return;
                }
                else if(widget.idPage < 2){
                 Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const Discussion(),
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
                }
                else {
                   Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const Matches(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(-1.0, 0.0);
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
                }
              },
            ),
            IconButton(
              icon: Icon(
                CupertinoIcons.person_fill,
                color: _selectedIndex == 3
                    ? Colors.redAccent
                    : Colors.grey, // Actif si index = 3
                size: 30,
              ),
              onPressed: () {
                _onItemTapped(3);
                widget.idPage == 0
                    ? null
                    : Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
      ),
    );
  }
}
