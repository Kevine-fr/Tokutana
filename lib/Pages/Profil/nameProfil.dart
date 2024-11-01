import 'package:flutter/material.dart';

class NameProfil extends StatefulWidget {
  const NameProfil({super.key});

  @override
  State<NameProfil> createState() => _NameProfilState();
}

class _NameProfilState extends State<NameProfil> {
  @override
  Widget build(BuildContext context) {
    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Jessica Parker, 23',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Proffesional model',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Icon(
                            Icons.share_outlined,
                            color: Colors.pink,
                            size: 21,
                          ),
                        )
                      ],
                    );
  }
}