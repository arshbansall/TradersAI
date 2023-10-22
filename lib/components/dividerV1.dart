import 'package:flutter/material.dart';

class DividerV1 extends StatelessWidget {

  final String text;

  const DividerV1({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: [
          const Expanded(
            child: Divider(
                thickness: 0.5,
                color: Colors.black
            ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
          ),
          const Expanded(
            child: Divider(
                thickness: 0.5,
                color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}