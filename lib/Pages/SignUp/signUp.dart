import 'package:flutter/material.dart';
import 'package:tokutana/Pages/SignUp/WithEmail/emailUser.dart';
import 'package:tokutana/Pages/SignUp/WithNumber/phoneNumber.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false, 
          elevation: 0, 
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
          child: Column(
            children: [
              Center(
                child: ClipOval(
                  child: Image.network(
                      'https://img.freepik.com/vecteurs-libre/degrade-illustration-oiseau-colore_343694-1741.jpg',
                      fit: BoxFit.contain,
                      width: 225,
                      height: 225),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Sign up to continue',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) =>
                                          const EmailUser(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                        child: Container(
                                            padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.pink),
                                            child: const Text(
                        'Continue with email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                                            ),
                                          ),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) =>
                                          const phoneNumber(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white12),
                      child: const Text(
                        'Use phone number',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 55,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 0.5,
                      width: 0.5,
                      color: Colors.grey,
                    )
                  ),
                  SizedBox(width: 5,),
                  Text('or sign up with',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 0.5,
                      width: 0.5,
                      color: Colors.grey,
                    )
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 17.5, horizontal: 17.5),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image.network(
                        'https://i.pinimg.com/736x/fe/0b/e9/fe0be943b8d674e1d6ad813b75059e34.jpg'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 17.5, horizontal: 17.5),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image.network(
                        'https://cdn.iconscout.com/icon/free/png-256/free-google-64-72531.png?f=webp'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 17.5, horizontal: 17.5),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCgkINY30WrvC8OJs2navlLupa1ZcjFfx2FA&s'),
                  )
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Terms of use',
                    style: TextStyle(color: Colors.red),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
