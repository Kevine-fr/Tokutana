import 'package:flutter/material.dart';

class ProcessTopSignUp extends StatefulWidget {
  final bool icon;
  final bool skip;
  final String title;
  final String subtitle;
  final TextAlign? alignSubtitle;

  const ProcessTopSignUp(
      {super.key,
      required this.icon,
      required this.skip,
      required this.title,
      required this.subtitle,
      required this.alignSubtitle});

  @override
  State<ProcessTopSignUp> createState() => _ProcessTopSignUpState();
}

class _ProcessTopSignUpState extends State<ProcessTopSignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: widget.icon,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
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
              ),
            ),
            Visibility(
              visible: widget.skip,
              child: const Text(
                'Skip',
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 34),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(widget.subtitle,
            textAlign: widget.alignSubtitle,
            style: TextStyle(color: Colors.grey[700])),
      ],
    );
  }
}
