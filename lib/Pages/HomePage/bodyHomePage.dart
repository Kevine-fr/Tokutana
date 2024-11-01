import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  int currentPageIndex = 0;
  double dragOffset = 0.0; // Décalage de glissement
  final double threshold = 25; // Seuil de glissement pour activer l'inclinaison
  final SwiperController _swiperController =
      SwiperController(); // Contrôleur du swiper

  final List<Person> people = [
    Person(
        image:
            'https://t3.ftcdn.net/jpg/04/71/45/72/360_F_471457251_zWUubbxxE0fh7xuMUJZZKN8WMOtyBdcs.jpg',
        nom: 'Parker',
        prenom: 'Jessica',
        distance: 1.0,
        age: 23,
        titre: 'Professional model',
        nbImage: 3),
    Person(
        image:
            'https://media.allure.com/photos/618153bc590337268c4b06fd/3:2/w_3000,h_2000,c_limit/My%20Beautiful%20Black%20Hair%201.jpg',
        nom: 'Smith',
        prenom: 'Emma',
        distance: 2.5,
        age: 27,
        titre: 'Graphic designer',
        nbImage: 6),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 95,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17.5),
              child: Image.network(
                people[1 - currentPageIndex].image,
                width: MediaQuery.of(context).size.width,
                height: 475,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Swiper(
          itemCount: people.length,
          controller: _swiperController,
          onIndexChanged: (index) {
            setState(() {
              currentPageIndex = index;
              dragOffset = 0.0; // Réinitialiser le décalage de glissement
            });
          },
          itemBuilder: (context, index) {
            double angle = 0.0;

            if (index == currentPageIndex) {
              // Inclinaison si le décalage de glissement est supérieur au seuil
              if (dragOffset.abs() >= threshold) {
                angle = (dragOffset > 0)
                    ? 5.5
                    : -7.5; // Inclinaison à droite ou à gauche
              }
            }
            return GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  dragOffset += details
                      .delta.dx; // Mettre à jour le décalage de glissement
                });
              },
              onHorizontalDragEnd: (details) {
                setState(() {
                  if (dragOffset > 100 &&
                      currentPageIndex < people.length - 1) {
                    _swiperController.next(); // Glissement vers la droite
                  } else if (dragOffset < -100 && currentPageIndex > 0) {
                    _swiperController.previous(); // Glissement vers la gauche
                  }
                  dragOffset =
                      0.0; // Réinitialiser le décalage de glissement après le glissement
                });
              },
              child: Transform(
                transform: Matrix4.identity()
                  ..rotateZ(angle * (3.141592653589793 / 180)) // Inclinaison
                  ..translate(dragOffset, 0), // Déplacer le container
                child: Stack(
                  children: [
                    Positioned(
                      top: 95,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 17.5, left: 45, right: 45),
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(17.5),
                              child: Image.network(
                                people[index].image,
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 475,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 17.5,
                              left: 15,
                              child: Container(
                                padding: const EdgeInsets.all(7.5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.5),
                                  color: Colors.grey[700],
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      '${people[index].distance} Km',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 55,
                              right: 0,
                              child: Container(
                                width: 25,
                                padding: const EdgeInsets.only(
                                    left: 7.5, right: 7.5, bottom: 7.5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12.5),
                                        bottomLeft: Radius.circular(12.5))),
                                child: Column(
                                  children: List.generate(people[index].nbImage, (index) {
                                    return Column(
                                      children: [
                                        const SizedBox(
                                          height: 7.5,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                          width: 5,
                                          height: 5,
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 10.0, sigmaY: 10.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(15),
                                    color: Colors.white.withOpacity(0.1),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${people[index].prenom} ${people[index].nom}, ${people[index].age}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        Text(
                                          people[index].titre,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class Person {
  final String image;
  final String nom;
  final String prenom;
  final double distance;
  final int age;
  final String titre;
  final int nbImage;

  Person({
    required this.image,
    required this.nom,
    required this.prenom,
    required this.distance,
    required this.age,
    required this.titre,
    required this.nbImage,
  });
}
