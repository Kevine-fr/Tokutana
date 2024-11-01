import 'dart:async';
import 'package:flutter/material.dart';

class CodeNumber extends StatefulWidget {
  const CodeNumber({super.key});

  @override
  State<CodeNumber> createState() => _CodeNumberState();
}

class _CodeNumberState extends State<CodeNumber> {
  String code = '';
  Duration countdownDuration = const Duration(minutes: 2, seconds: 30);
  Timer? countdownTimer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (countdownDuration.inSeconds > 0) {
        setState(() {
          countdownDuration = countdownDuration - const Duration(seconds: 1);
        });
      } else {
        countdownTimer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    countdownTimer?.cancel();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    String minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    String seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Text(
                  formatDuration(countdownDuration),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  "Type the verification code we've sent you",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[800], fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: List.generate(4, (index) {
                  return Expanded(
                    child: Container(
                      height: 70,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: code.length > index ? Colors.pink : Colors.white,
                        border: Border.all(
                          color: code.length > index ? Colors.pink : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          index < code.length ? code[index] : '',
                          style: TextStyle(
                            color: code.length > index
                                ? Colors.white
                                : Colors.grey,
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 85),
              Column(
                children: [
                  _buildNumberRow(['1', '2', '3']),
                  const SizedBox(height: 30),
                  _buildNumberRow(['4', '5', '6']),
                  const SizedBox(height: 30),
                  _buildNumberRow(['7', '8', '9']),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      _buildNumberButton('0'),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if (code.isNotEmpty) {
                              setState(() {
                                code = code.substring(0, code.length - 1);
                              });
                            }
                          },
                          child: const Icon(Icons.clear, size: 40),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
              const Center(
                child: Text(
                  'Send again',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumberRow(List<String> numbers) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: numbers.map((number) => _buildNumberButton(number)).toList(),
    );
  }

  Widget _buildNumberButton(String number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (code.length < 4) {
            setState(() {
              code += number;
            });
          }
        },
        child: Text(
          number,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
