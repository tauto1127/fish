import 'dart:math';

import 'package:fish_hackathon/main.dart';
import 'package:fish_hackathon/model/direction.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/navi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class NaviView extends ConsumerStatefulWidget {
  const NaviView({super.key});

  @override
  ConsumerState<NaviView> createState() => _NaviViewState();
}

class _NaviViewState extends ConsumerState<NaviView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _hasAnimated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int getKakudo(RelativeDirection direction) {
    switch (direction) {
      case RelativeDirection.straight:
        return 90;
      case RelativeDirection.right:
        return 0;
      case RelativeDirection.left:
        return 180;
    }
  }

  @override
  Widget build(BuildContext context) {
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

    if (currentPoint.x == destinationPoint.x && currentPoint.y == destinationPoint.y) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) => Routemaster.of(context).replace('/complete'));
      return const SizedBox.shrink();
    }

    if (destinationPoint.x == currentPoint.x || destinationPoint.y == currentPoint.y) {
      if (!_hasAnimated) {
        _controller.forward();
        _hasAnimated = true;
      }
    }

    return Scaffold(
      appBar: MirasutaAppBar,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 600),
              child: Stack(
                children: [
                  if (destinationPoint.x == currentPoint.x || destinationPoint.y == currentPoint.y)
                    AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, _animation.value * 200),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 100,
                                    color: Colors.yellow[400],
                                  ),
                                  Text(
                                    destination.displayName,
                                    style: const TextStyle(
                                      height: 18,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
          Consumer(
            builder: (context, ref, child) {
              final direction = mapState.getDirectionOfMovement(
                  currentPoint: currentPoint, destination: destinationPoint);
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
                Text((destinationPoint.x == currentPoint.x || destinationPoint.y == currentPoint.y) ? "目的地まであと" : "左折まであと"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${distance.toInt()}",
                      style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "m",
                      style: TextStyle(fontSize: 35),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 10, color: Colors.grey[500]!),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Transform.rotate(
                      angle: (((destinationPoint.x == currentPoint.x || destinationPoint.y == currentPoint.y) && distance == 1) &&
                              !(destinationPoint.x == currentPoint.x && destinationPoint.y == currentPoint.y))
                          ? -pi / 2
                          : 0,
                      // angle: -pi / 2,
                      // angle: 0,
                      child: const Icon(
                        Icons.navigation,
                        size: 160,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "目的地: ${destination.displayName}",
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
