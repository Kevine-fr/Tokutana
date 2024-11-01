import 'package:flutter/material.dart';

class LocationProfil extends StatefulWidget {
  const LocationProfil({super.key});

  @override
  State<LocationProfil> createState() => _LocationProfilState();
}

class _LocationProfilState extends State<LocationProfil> {
  @override
  Widget build(BuildContext context) {
    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Location',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Pointe-Noire, Siafoumou',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color.fromARGB(255, 255, 208, 224)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.pink,
                                ),
                                Text('1km',
                                    style: TextStyle(
                                      color: Colors.pink,
                                    )),
                              ],
                            )),
                      ],
                    );
  }
}