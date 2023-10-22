import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class ButtonV1 extends StatelessWidget {

  final VoidCallback onTap;
  final String buttonText;
  //final BuildContext context;

  const ButtonV1({
    super.key,
    required this.onTap,
    required this.buttonText,
    //required this.context
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin:  const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.indigo.shade900,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}