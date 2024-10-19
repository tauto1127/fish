import 'package:fish_hackathon/view/map_dummy.dart';
import 'package:flutter/material.dart';

class SpotBox extends StatelessWidget {
  const SpotBox({super.key, required this.name, required this.imagePath});
  final String name;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute<void>(
                  builder: (context) {
                    return const MapDummy();
                  },
        )),
      },
      child: Container(
        color: Colors.blue,
        child: Column(
              children: [
        Text(name),
        Image(image: AssetImage(imagePath))
              ],
            ),
      ),
    );
  }
}
