import 'package:flutter/material.dart';
import 'package:tokutana/Pages/HomePage/bodyHomePage.dart';
import 'package:tokutana/Pages/Profil/Pictures/showImpaire.dart';
import 'package:tokutana/Pages/Profil/Pictures/showPaire.dart';

class PictureProfil extends StatefulWidget {
  const PictureProfil({super.key});

  @override
  State<PictureProfil> createState() => _PictureProfilState();
}

class _PictureProfilState extends State<PictureProfil> {
  late Widget picture;
  final List<Person> people = [
    Person(
        image:
            'https://t3.ftcdn.net/jpg/04/71/45/72/360_F_471457251_zWUubbxxE0fh7xuMUJZZKN8WMOtyBdcs.jpg',
        nom: 'Parker',
        prenom: 'Jessica',
        distance: 1.0,
        age: 23,
        titre: 'Professional model',
        nbImage: 5),
    Person(
        image:
            'https://media.allure.com/photos/618153bc590337268c4b06fd/3:2/w_3000,h_2000,c_limit/My%20Beautiful%20Black%20Hair%201.jpg',
        nom: 'Smith',
        prenom: 'Emma',
        distance: 2.5,
        age: 27,
        titre: 'Graphic designer',
        nbImage: 5),
    Person(
        image:
            'https://image.cdn2.seaart.ai/2024-07-11/cq7q2ale878c73biaosg-1/95c5ddd5a08a19157a94c6fef08ce591_high.webp',
        nom: 'Sarah',
        prenom: 'Saloni',
        distance: 2.5,
        age: 20,
        titre: 'Graphic designer',
        nbImage: 5),
    Person(
        image:
            'https://cdn.pixabay.com/photo/2024/04/27/02/01/beautiful-woman-8722815_1280.jpg',
        nom: 'Luna',
        prenom: 'Emma',
        distance: 2.5,
        age: 27,
        titre: 'Graphic designer',
        nbImage: 5),
    Person(
        image:
            'https://img.pikbest.com/origin/10/00/02/90YpIkbEsTdpK.jpeg!w700wp',
        nom: 'Carmène',
        prenom: 'Emma',
        distance: 2.5,
        age: 27,
        titre: 'Graphic designer',
        nbImage: 5),
  ];

  @override
  Widget build(BuildContext context) {
    if (people.length % 2 == 0) {
      picture = ShowPaire(people: people,);
    }
    if (people.length % 2 == 1) {
      picture = ShowImpaire(people: people,);
    }
    return picture;
  }
}
