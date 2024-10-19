import 'package:fish_hackathon/view/purpose_none_exist/spot_box.dart';
import 'package:flutter/material.dart';

class PurposeNoneExist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SpotBox(name: "イカ", imagePath: "image/squid.jpg")
        ],
      ),
    );
  }
}
