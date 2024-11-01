import 'package:flutter/material.dart';

class ListCenterOfInterst extends StatefulWidget {
  const ListCenterOfInterst({super.key});

  @override
  State<ListCenterOfInterst> createState() => _ListCenterOfInterstState();
}

class _ListCenterOfInterstState extends State<ListCenterOfInterst> {
  late List<CenterOfInterst> myMap = [
    CenterOfInterst(false, 'Shopping', const Icon(Icons.shopify_outlined)),
    CenterOfInterst(false, 'Music', const Icon(Icons.music_note)),
    CenterOfInterst(false, 'Travel', const Icon(Icons.flight)),
    CenterOfInterst(false, 'Cooking', const Icon(Icons.restaurant)),
    CenterOfInterst(false, 'Technology', const Icon(Icons.computer)),
    CenterOfInterst(false, 'Movies', const Icon(Icons.movie)),
    CenterOfInterst(false, 'Art', const Icon(Icons.palette)),
    CenterOfInterst(false, 'Photography', const Icon(Icons.camera_alt)),
    CenterOfInterst(false, 'Fitness', const Icon(Icons.fitness_center)),
    CenterOfInterst(false, 'Books', const Icon(Icons.book)),
    CenterOfInterst(false, 'Fashion', const Icon(Icons.checkroom)),
    CenterOfInterst(false, 'Gaming', const Icon(Icons.videogame_asset)),
    CenterOfInterst(false, 'Nature', const Icon(Icons.park)),
    CenterOfInterst(false, 'Science', const Icon(Icons.science)),
    CenterOfInterst(false, 'History', const Icon(Icons.history_edu)),
    CenterOfInterst(false, 'Sports', const Icon(Icons.sports)),
  ];

  void toggleSelection(int index) {
    setState(() {
      myMap[index].selected = !myMap[index].selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Boucle sur myMap pour générer les widgets
          for (int i = 0; i < myMap.length; i += 2)
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        toggleSelection(i);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: myMap[i].selected ? Colors.pink : Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          boxShadow: myMap[i].selected
                              ? [
                                  BoxShadow(
                                    color: Colors.pink.withOpacity(0.5),
                                    offset: const Offset(5, 5),
                                    blurRadius: 10,
                                  )
                                ]
                              : [],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              myMap[i].icon.icon,
                              color: myMap[i].selected ? Colors.white : Colors.pink,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              myMap[i].text,
                              style: TextStyle(
                                color: myMap[i].selected ? Colors.white : Colors.black,
                                fontWeight: myMap[i].selected ? FontWeight.w600 : FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  if (i + 1 < myMap.length)
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          toggleSelection(i + 1);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: myMap[i + 1].selected ? Colors.pink : Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            boxShadow: myMap[i + 1].selected
                                ? [
                                    BoxShadow(
                                      color: Colors.pink.withOpacity(0.5),
                                      offset: const Offset(5, 5),
                                      blurRadius: 10,
                                    )
                                  ]
                                : [],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                myMap[i + 1].icon.icon,
                                color: myMap[i + 1].selected ? Colors.white : Colors.pink,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                myMap[i + 1].text,
                                style: TextStyle(
                                  color: myMap[i + 1].selected ? Colors.white : Colors.black,
                                  fontWeight: myMap[i + 1].selected ? FontWeight.w600 : FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(
                    width: 15
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CenterOfInterst {
  late bool selected;
  late String text;
  late Icon icon;

  CenterOfInterst(this.selected, this.text, this.icon);
}
