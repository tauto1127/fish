import 'package:flutter/material.dart';

class SpotBox extends StatelessWidget {
  const SpotBox({super.key, required this.name, required this.imagePath});
  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
    Text(name),
    Image(image: AssetImage(imagePath))
          ],
        );
  }
}
