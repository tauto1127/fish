import 'package:flutter/material.dart';

class MapDummy extends StatelessWidget {
  const MapDummy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(image: AssetImage("image/map.webp")),
    );
  }

}
