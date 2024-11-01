import 'package:flutter/material.dart';

class ConfirmBottomButton extends StatefulWidget {
  final bool visibilityButton;
  final Color colorButton;
  final String textButton;
  final Color colorText;
  final VoidCallback onPressed; 

  const ConfirmBottomButton({
    super.key,
    required this.visibilityButton,
    required this.colorButton,
    required this.colorText,
    required this.textButton,
    required this.onPressed, 
  });

  @override
  State<ConfirmBottomButton> createState() => _ConfirmBottomButtonState();
}

class _ConfirmBottomButtonState extends State<ConfirmBottomButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 45,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Visibility(
          visible: widget.visibilityButton,
          child: GestureDetector(
            onTap: widget.onPressed, // Appel de la fonction de redirection
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: widget.colorButton,
              ),
              child: Center(
                child: Text(
                  widget.textButton,
                  style: TextStyle(
                      color: widget.colorText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
