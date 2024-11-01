import 'package:flutter/material.dart';
import 'package:tokutana/Pages/HomePage/bodyHomePage.dart';
import 'package:tokutana/Pages/ImageShow/imageShow.dart';

class ShowImpaire extends StatefulWidget {
  final List<Person> people;
  const ShowImpaire({super.key, required this.people});

  @override
  State<ShowImpaire> createState() => _ShowImpaireState();
}

class _ShowImpaireState extends State<ShowImpaire> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < widget.people.length; i += 3)
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
                        widget.people[i].image,
                        fit: BoxFit.cover,
                        height: 125,
                      ),
                    ),
                  ),
                ),
                if (i + 1 < widget.people.length) const SizedBox(width: 10),
                if (i + 1 < widget.people.length)
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
                          widget.people[i + 1].image,
                          fit: BoxFit.cover,
                          height: 125,
                        ),
                      ),
                    ),
                  ),
                if (i + 2 < widget.people.length)
                  const SizedBox(
                    width: 10,
                  ),
                if (i + 2 < widget.people.length)
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
                          widget.people[i + 2].image,
                          fit: BoxFit.cover,
                          height: 125,
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
