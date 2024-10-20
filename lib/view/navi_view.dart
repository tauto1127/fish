import 'dart:math';

import 'package:fish_hackathon/main.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/model/map_model.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/navi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NaviView extends ConsumerWidget {
  const NaviView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final naviState = ref.watch(naviViewModelProvider);
    final mapState = ref.watch(mapViewModelProvider);
    final destination = naviState.destinationRoom;
    final Point<int> destinationPoint = mapState.roomDict![destination!]!.door;
    final currentPoint = naviState.currentPoint;
    


    if (currentPoint == null) {
      return const CircularProgressIndicator();
    }
    final nextMidpoint = mapState.getNextMidpoint(currentPoint: currentPoint, destination: destinationPoint);
    final distance = ((currentPoint.x - nextMidpoint.x).abs() + (currentPoint.y - nextMidpoint.y).abs()) / 200;
    return Scaffold(
      appBar: MirasutaAppBar,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "目的地: ${destination.displayName}",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 500),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.star,
                    size: 100,
                    color: Colors.yellow[400],
                  ),
                ),
                Center(
                  child: const Text("R791"),
                )
              ],
            ),
          )),
          Consumer(
            builder: (context, ref, child) {
              final direction = mapState.getDirectionOfMovement(currentPoint: currentPoint!, destination: destinationPoint);

              //debugPrint(((currentLocation.x - nextMidpoint.x).abs() + (currentLocation.y - nextMidpoint.y).abs()) as String?);

              // if (nextMidpoint.x != destinationPoint.x || nextMidpoint.y != destinationPoint.y) {
              //   ref.read(naviViewModelProvider.notifier).setMockMovedToNextMidpointLocation(point: nextMidpoint, direction: direction);
              // }

              if (currentPoint == null) {
                return SizedBox.shrink();
              }

              return Text(
                "現在地: (${currentPoint.x}, ${currentPoint.y})\n"
                "目的地: ${destination.displayName}, (${destinationPoint.x}, ${destinationPoint.y})\n"
                "進行方向: ${direction.name}\n"
                "中間地点: (${nextMidpoint.x}, ${nextMidpoint.y})\n"
                "距離: ${((currentPoint.x - nextMidpoint.x).abs() + (currentPoint.y - nextMidpoint.y).abs()) / 200}m\n",
                style: TextStyle(color: Colors.grey[300]),
              );
            },
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("あと${distance}m"),
                Icon(
                  Icons.navigation_outlined,
                  size: 160,
                  color: Colors.blue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
