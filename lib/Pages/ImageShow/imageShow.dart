import 'package:flutter/material.dart';
import 'package:tokutana/Pages/ImageShow/imageList.dart';

class ImageShow extends StatefulWidget {
  const ImageShow({super.key});

  @override
  State<ImageShow> createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  bool showItems = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            automaticallyImplyLeading: false,
          )),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  showItems = !showItems;
                });
              },
              child: Image.network(
                'https://t3.ftcdn.net/jpg/04/71/45/72/360_F_471457251_zWUubbxxE0fh7xuMUJZZKN8WMOtyBdcs.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Visibility(
              visible: showItems,
              child: Container(
                color: Colors.grey[50],
                height: 100,
                width: MediaQuery.of(context).size.width,
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
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.pink,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ImageList(showItems: showItems,)
          ],
        ),
      ),
    );
  }
}
