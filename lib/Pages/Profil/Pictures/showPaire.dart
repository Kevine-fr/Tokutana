import 'package:flutter/material.dart';
import 'package:tokutana/Pages/HomePage/bodyHomePage.dart';
import 'package:tokutana/Pages/ImageShow/imageShow.dart';

class ShowPaire extends StatefulWidget {
  final List<Person> people;
  const ShowPaire({super.key, required this.people});

  @override
  State<ShowPaire> createState() => _ShowPaireState();
}

class _ShowPaireState extends State<ShowPaire> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          for (int i = 0;
              i < widget.people.length;
              i += 2) 
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ImageShow()));
                        },
                        child: Image.network(
                          widget.people[i].image, // Image à l'index i
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  if (i + 1 <
                      widget.people.length) // Vérifier si l'élément suivant existe
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ImageShow()));
                          },
                          child: Image.network(
                            widget.people[i + 1].image, // Image à l'index i + 1
                            fit: BoxFit.cover,
                            height: 150,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
        ],
      );
  }
}