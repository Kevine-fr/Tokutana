import 'package:flutter/material.dart';
import 'package:tokutana/Pages/SignUp/gender.dart';
import 'package:tokutana/Widget/processTopSignUp.dart';

class EmailUser extends StatefulWidget {
  const EmailUser({super.key});

  @override
  State<EmailUser> createState() => _EmailUserState();
}

class _EmailUserState extends State<EmailUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false, 
          elevation: 0, 
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: Stack(
        children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProcessTopSignUp(icon: true, skip: false, title: 'Profile details', subtitle: '', alignSubtitle: TextAlign.start),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://www.shutterstock.com/image-vector/upload-add-picture-jpg-file-600nw-1975494812.jpg',
                                width: 115,
                                height: 115,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.camera_alt_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'First name',
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: 'David',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Last name',
                        labelStyle: TextStyle(color: Colors.black),
                        hintText: 'Peterson',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.grey,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.pink)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 206, 223),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.date_range_rounded,
                            color: Colors.pink,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Choose birthday date',
                            style: TextStyle(
                                color: Colors.pink, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 95,
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
                                          const Gender(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    var begin = Offset(1.0, 0.0);
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
                              padding: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.pink,
                              ),
                              child: Text(
                                'Confirm',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
