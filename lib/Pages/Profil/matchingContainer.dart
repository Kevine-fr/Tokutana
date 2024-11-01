import 'package:flutter/material.dart';

class MatchingContainer extends StatefulWidget {
  const MatchingContainer({super.key});

  @override
  State<MatchingContainer> createState() => _MatchingContainerState();
}

class _MatchingContainerState extends State<MatchingContainer> {
  double rotationAngle = 0.0;
  bool actived = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(5, 5),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear,
                  color: Colors.pink,
                  size: 35,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink.withOpacity(0.5),
                    offset: const Offset(5, 5),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(100),
                color: Colors.pink,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_rounded,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  rotationAngle += 1.0;
                  actived = !actived;
                });
              },
              child: AnimatedRotation(
                turns: rotationAngle,
                duration: const Duration(milliseconds: 375), 
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: const Offset(5, 5),
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        rotationAngle += 1.0;
                        actived = !actived;
                      });
                    },
                    icon: actived ? 
                    const Icon(
                      Icons.star_rounded,
                      color: Colors.purple,
                      size: 35,
                    ) :
                    const Icon(
                      Icons.star_outline_rounded,
                      color: Colors.purple,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
