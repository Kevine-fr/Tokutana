import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Swiping extends StatefulWidget {
  const Swiping({super.key});

  @override
  State<Swiping> createState() => _SwipingState();
}

class _SwipingState extends State<Swiping> {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.brown,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 2, // Utilise la moitié de la hauteur de l'écran
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 300.0,
              height: 400.0,
              color: colors[index],
              child: Center(
                child: Text(
                  'Container ${index + 1}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal, // Scroll horizontal
          itemWidth: 300.0,
          layout: SwiperLayout.TINDER,
        ),
      ),
    );
  }
}
