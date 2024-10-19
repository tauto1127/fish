import 'package:fish_hackathon/view/map_dummy.dart';
import 'package:flutter/material.dart';

class SpotBox extends StatelessWidget {
  const SpotBox({super.key, required this.name, required this.imagePath, this.subText});
  final String name;
  final String imagePath;
  final String? subText;

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
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: const TextStyle(fontSize: 30),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(subText ?? ""),
                  ],
                ),
              ),
              ClipRRect(
                child: Image(image: AssetImage(imagePath)),
                borderRadius: BorderRadius.circular(15),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
