import 'package:flutter/material.dart';
import 'package:tokutana/Pages/Profil/imageProfil.dart';
import 'package:tokutana/Pages/Profil/interestProfil.dart';
import 'package:tokutana/Pages/Profil/locationProfil.dart';
import 'package:tokutana/Pages/Profil/nameProfil.dart';
import 'package:tokutana/Pages/Profil/pictureProfil.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  late double width;
  bool same = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageProfil(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NameProfil(),
                    const SizedBox(
                      height: 30,
                    ),
                    const LocationProfil(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'About',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading...',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      'Read more',
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      'Interests',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10,),
                    const InterestProfil(),
                    const SizedBox(height: 30,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Gallery',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          ),
                        ),
                        Text('See all',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const PictureProfil()
                  ],
                ),
              ),
              const SizedBox(height: 5,)
            ],
          ),
        )
      );
  }
}
