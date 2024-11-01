import 'package:flutter/material.dart';

class InterestProfil extends StatefulWidget {
  const InterestProfil({super.key});

  @override
  State<InterestProfil> createState() => _InterestProfilState();
}

class _InterestProfilState extends State<InterestProfil> {
  @override
  Widget build(BuildContext context) {
    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.pink)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: true,
                                      child: Icon(
                                        Icons.done_all,
                                          color: Colors.pink,
                                        ),
                                      ),
                                      Text('Travelling',
                                        style: TextStyle(
                                        color: Colors.pink  
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.pink)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: true,
                                      child: Icon(
                                        Icons.done_all,
                                          color: Colors.pink,
                                        ),
                                      ),
                                      Text('Books',
                                        style: TextStyle(
                                        color: Colors.pink  
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: false,
                                      child: Icon(
                                        Icons.done_all,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text('Music',
                                        style: TextStyle(
                                        color: Colors.black  
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),
                        const SizedBox(height: 12.5,),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: false,
                                      child: Icon(
                                        Icons.done_all,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text('Dancing',
                                        style: TextStyle(
                                        color: Colors.black  
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.pink)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: true,
                                      child: Icon(
                                        Icons.done_all,
                                          color: Colors.pink,
                                        ),
                                      ),
                                      Text('Games',
                                        style: TextStyle(
                                        color: Colors.pink  
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                              ),
                            ),
                          ],
                        )
                      ],
                    );
  }
}