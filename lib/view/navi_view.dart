import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/navi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NaviView extends StatelessWidget {
  const NaviView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Consumer(
        builder: (context, ref, child) {
          final mapState = ref.watch(mapViewModelProvider);
          final naviState = ref.watch(naviViewModelProvider);
          final destination = mapState.elements[naviState.destinationIndex];
          return Text("目的: ${destination.name}, (${destination.x}, ${destination.y})");
        },
      )),
    );
  }
}
