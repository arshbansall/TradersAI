import 'package:flutter/material.dart';

class CardV1 extends StatelessWidget {

  final String imagePath;
  final String heading;
  final String body;
  final Function()? onTap;

  const CardV1({
    super.key,
    required this.imagePath,
    required this.heading,
    required this.body,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imagePath,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Text(
                  heading,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: Text(
              body,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('Read More'),
                onPressed: () => onTap,
              ),
            ],
          )
        ],
      ),
    );
  }
}