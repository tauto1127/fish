import 'dart:math';

import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/navi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NaviView extends ConsumerWidget {
  const NaviView({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
  
    return Scaffold(
      body: Center(child: Consumer(
        builder: (context, ref, child) {
          final mapState = ref.watch(mapViewModelProvider);
          final naviState = ref.watch(naviViewModelProvider);
          final currentPoint = naviState.currentPoint;
          final destination = naviState.destinationRoom;
          final Point<int> destinationPoint = mapState.roomDict![destination!]!.getDoor();
          final direction = mapState.getDirectionOfMovement(currentPoint: currentPoint!, destination: destinationPoint);
          final nextMidpoint = mapState.getNextMidpoint(currentPoint: currentPoint, destination: destinationPoint);

          return Text(
              "現在地: (${currentPoint.x}, ${currentPoint.y})\n"
              "目的地: ${destination.name}, (${destinationPoint.x}, ${destinationPoint.y})\n"
              "進行方向: ${direction.name}\n"
              "中間地点: (${nextMidpoint.x}, ${nextMidpoint.y})"
          );
        },
      )),
    );
  }
}
