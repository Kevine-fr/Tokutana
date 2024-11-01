import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tokutana/Pages/HomePage/bodyHomePage.dart';
import 'package:tokutana/Pages/Matching/matching.dart';

class BodyMatches extends StatefulWidget {
  const BodyMatches({super.key});

  @override
  State<BodyMatches> createState() => _BodyMatchesState();
}

class _BodyMatchesState extends State<BodyMatches> {
  final List<Person> people = [
    Person(
      image:
          'https://t3.ftcdn.net/jpg/04/71/45/72/360_F_471457251_zWUubbxxE0fh7xuMUJZZKN8WMOtyBdcs.jpg',
      nom: 'Parker',
      prenom: 'Jessica',
      distance: 1.0,
      age: 23,
      titre: 'Professional model',
      nbImage: 5
    ),
    Person(
      image:
          'https://media.allure.com/photos/618153bc590337268c4b06fd/3:2/w_3000,h_2000,c_limit/My%20Beautiful%20Black%20Hair%201.jpg',
      nom: 'Smith',
      prenom: 'Emma',
      distance: 2.5,
      age: 27,
      titre: 'Graphic designer',
      nbImage: 5
    ),
    Person(
      image:
          'https://image.cdn2.seaart.ai/2024-07-11/cq7q2ale878c73biaosg-1/95c5ddd5a08a19157a94c6fef08ce591_high.webp',
      nom: 'Sarah',
      prenom: 'Saloni',
      distance: 2.5,
      age: 20,
      titre: 'Graphic designer',
      nbImage: 5
    ),
    Person(
      image:
          'https://cdn.pixabay.com/photo/2024/04/27/02/01/beautiful-woman-8722815_1280.jpg',
      nom: 'Luna',
      prenom: 'Emma',
      distance: 2.5,
      age: 27,
      titre: 'Graphic designer',
      nbImage: 5
    ),
    Person(
      image:
          'https://img.pikbest.com/origin/10/00/02/90YpIkbEsTdpK.jpeg!w700wp',
      nom: 'Carmène',
      prenom: 'Emma',
      distance: 2.5,
      age: 27,
      titre: 'Graphic designer',
      nbImage: 5
    ),

    
    Person(
      image:
          'https://img.freepik.com/photos-premium/belle-fille-dessinant-peinture-generative-ai_860599-74.jpg',
      nom: 'Ruby',
      prenom: 'Saloni',
      distance: 2.5,
      age: 20,
      titre: 'Graphic designer',
      nbImage: 5
    ),
    Person(
      image:
          'https://i.pinimg.com/originals/5b/b9/16/5bb9166a1260a692eaa7701d33cf78a8.jpg',
      nom: 'Angela',
      prenom: 'Saloni',
      distance: 2.5,
      age: 20,
      titre: 'Graphic designer',
      nbImage: 5
    ),
    Person(
      image:
          'https://i.pinimg.com/236x/db/ac/13/dbac1316560947240939426dce7bce45.jpg',
      nom: 'Ronie',
      prenom: 'Saloni',
      distance: 2.5,
      age: 20,
      titre: 'Graphic designer',
      nbImage: 5
    ),
    Person(
      image:
          'https://i.pinimg.com/236x/ca/88/3e/ca883e6daeffd5c94378ee46e5d68af9.jpg',
      nom: 'Kylie',
      prenom: 'Saloni',
      distance: 2.5,
      age: 20,
      titre: 'Graphic designer',
      nbImage: 5
    ),
    Person(
      image:
          'https://i.pinimg.com/236x/fa/4a/33/fa4a3375ba52f913ce85fa02ed2762b8.jpg',
      nom: 'Elena',
      prenom: 'Saloni',
      distance: 2.5,
      age: 20,
      titre: 'Graphic designer',
      nbImage: 5
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 0.5,
                width: 0.5,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Today',
              style: TextStyle(color: Colors.grey[700], fontSize: 12),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Container(
                height: 0.5,
                width: 0.5,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        // Utilisation de GridView pour afficher les instances
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Deux colonnes
              childAspectRatio: 0.6, // Aspect ratio pour les éléments
              crossAxisSpacing: 10, // Espace entre les colonnes
              mainAxisSpacing: 10, // Espace entre les lignes
            ),
            itemCount: people.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.pink[800],
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 215,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        people[index].image,
                        height: 225,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5),
                            child: Text(
                              '${people[index].prenom}, ${people[index].age}', // Affichage du nom et de l'âge
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15)),
                                      gradient: LinearGradient(
                                        colors: [
                                          const Color.fromARGB(255, 64, 62, 62),
                                          const Color.fromARGB(255, 64, 61, 61)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.clear,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 2),
                              Expanded(
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15)),
                                      gradient: LinearGradient(
                                        colors: [
                                          const Color.fromARGB(255, 64, 62, 62),
                                          const Color.fromARGB(255, 64, 61, 61)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(10),
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Matching()));
                                      },
                                      child: Icon(
                                        Icons.favorite_border_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
