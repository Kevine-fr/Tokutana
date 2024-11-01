import 'package:flutter/material.dart';

class CardMatch extends StatefulWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final double degree;
  final String image;
  final double? topIcon;
  final double? leftIcon;
  final double? rightIcon;
  final double? bottomIcon;

  const CardMatch(
      {super.key,
      required this.top,
      required this.left,
      required this.right,
      required this.bottom,
      required this.degree,
      required this.image,
      required this.topIcon,
      required this.leftIcon,
      required this.rightIcon,
      required this.bottomIcon,});

  @override
  State<CardMatch> createState() => _CardMatchState();
}

class _CardMatchState extends State<CardMatch> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.top,
      left: widget.left,
      right: widget.right,
      bottom: widget.bottom,
      child: Transform.rotate(
        angle: widget.degree * 3.1415927 / 180, 
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(17.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
            ),
            Positioned(
              left: widget.leftIcon,
              right: widget.rightIcon,
              bottom: widget.bottomIcon,
              top: widget.topIcon,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 241, 241),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.favorite_rounded,
                  color: Colors.pink,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
