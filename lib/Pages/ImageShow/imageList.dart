import 'package:flutter/material.dart';
import 'package:tokutana/Pages/HomePage/bodyHomePage.dart';

class ImageList extends StatefulWidget {
  final bool showItems;
  const ImageList({super.key, required this.showItems});

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
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
    Person(
        image:
            'https://img.freepik.com/photos-premium/belle-fille-dessinant-peinture-generative-ai_860599-74.jpg',
        nom: 'Ruby',
        prenom: 'Saloni',
        distance: 2.5,
        age: 20,
        titre: 'Graphic designer',
        nbImage: 5),
    Person(
        image:
            'https://i.pinimg.com/originals/5b/b9/16/5bb9166a1260a692eaa7701d33cf78a8.jpg',
        nom: 'Angela',
        prenom: 'Saloni',
        distance: 2.5,
        age: 20,
        titre: 'Graphic designer',
        nbImage: 5),
    Person(
        image:
            'https://i.pinimg.com/236x/db/ac/13/dbac1316560947240939426dce7bce45.jpg',
        nom: 'Ronie',
        prenom: 'Saloni',
        distance: 2.5,
        age: 20,
        titre: 'Graphic designer',
        nbImage: 5),
    Person(
        image:
            'https://i.pinimg.com/236x/ca/88/3e/ca883e6daeffd5c94378ee46e5d68af9.jpg',
        nom: 'Kylie',
        prenom: 'Saloni',
        distance: 2.5,
        age: 20,
        titre: 'Graphic designer',
        nbImage: 5),
    Person(
        image:
            'https://i.pinimg.com/236x/fa/4a/33/fa4a3375ba52f913ce85fa02ed2762b8.jpg',
        nom: 'Elena',
        prenom: 'Saloni',
        distance: 2.5,
        age: 20,
        titre: 'Graphic designer',
        nbImage: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Visibility(
          visible: widget.showItems,
          child: Container(
            height: 120,
            color: Colors.grey[50],
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: people.map((index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        index.image,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.height * 0.1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ));
  }
}
