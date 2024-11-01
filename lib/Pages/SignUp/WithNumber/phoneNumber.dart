import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:tokutana/Pages/SignUp/WithNumber/codeNumber.dart';
import 'package:tokutana/Widget/processTopSignUp.dart';

class phoneNumber extends StatefulWidget {
  const phoneNumber({super.key});

  @override
  State<phoneNumber> createState() => _phoneNumberState();
}

class _phoneNumberState extends State<phoneNumber> {
  String initialCountry = 'CG';
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'CG');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false, 
          elevation: 0, 
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProcessTopSignUp(icon: true, skip: false, title: 'My mobile', subtitle: 'Please enter your valid phone number. We will send you a 4-digit code to verify your account', alignSubtitle: TextAlign.start),
              const SizedBox(
                height: 30,
              ),
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  phoneNumber = number;
                },
                initialValue: phoneNumber,
                formatInput: true,
                autoValidateMode: AutovalidateMode.onUserInteraction,
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.DROPDOWN,
                  showFlags: true,
                  setSelectorButtonAsPrefixIcon: true,
                  leadingPadding: 10,
                ),
                ignoreBlank: false,
                // textFieldController: _phoneController,
                inputDecoration: InputDecoration(
                  hintText: '06 431 07 04',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                selectorTextStyle: const TextStyle(color: Colors.black),
                textStyle: TextStyle(color: Colors.black),
                keyboardType: TextInputType.phone,
                onInputValidated: (bool isValid) {},
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) =>
                                          const CodeNumber(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    var begin = Offset(1.0, 0.0);
                                    var end = Offset.zero;
                                    var curve = Curves.easeInOut;
                        
                                    var tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: curve));
                        
                                    return SlideTransition(
                                      position: animation.drive(tween),
                                      child: child,
                                    );
                                  },
                                ),
                              );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
