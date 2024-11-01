import 'package:flutter/material.dart';
import 'package:tokutana/Pages/HomePage/bodyHomePage.dart';
import 'package:tokutana/Pages/HomePage/footerHomePage.dart';
import 'package:tokutana/Pages/HomePage/headerHomePage.dart';
import 'package:tokutana/Pages/Profil/profil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {@override
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 45, right: 45, top: 15),
                  child: const HeaderHomePage()),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              boxShadow:[
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    offset: const Offset(5, 5),
                                    blurRadius: 10,
                                  )
                                ],
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.pink,
                                size: 35,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              boxShadow:[
                                  BoxShadow(
                                    color: Colors.pink.withOpacity(0.5),
                                    offset: const Offset(5, 5),
                                    blurRadius: 10,
                                  )
                                ],
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.pink,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_rounded,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              boxShadow:[
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    offset: const Offset(5, 5),
                                    blurRadius: 10,
                                  )
                                ],
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.star_outline_rounded,
                                color: Colors.purple,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ), 
              GestureDetector(
                onTap: (){
                  Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const Profil(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    var begin = const Offset(0.0, 1.0);
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
                child: const BodyHomePage()),
            ],
          ),
      ),
      bottomNavigationBar: const FooterHomePage(idPage: 0,),
    );
  }
}