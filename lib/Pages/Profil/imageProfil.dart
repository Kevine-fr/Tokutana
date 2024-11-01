import 'package:flutter/material.dart';
import 'package:tokutana/Pages/Profil/matchingContainer.dart';

class ImageProfil extends StatefulWidget {
  const ImageProfil({super.key});

  @override
  State<ImageProfil> createState() => _ImageProfilState();
}

class _ImageProfilState extends State<ImageProfil> {
  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [
                  SizedBox(
                    child: Image.network(
                      'https://t3.ftcdn.net/jpg/04/71/45/72/360_F_471457251_zWUubbxxE0fh7xuMUJZZKN8WMOtyBdcs.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.70,
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 0,
                    child: Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.white),
                            ),
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          color: Colors.white,
                        ),
                      )
                    ),
                  const MatchingContainer(),
                ],
              );
  }
}