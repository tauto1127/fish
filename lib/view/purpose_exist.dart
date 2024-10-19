import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/view/navi_view.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/navi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PurposeExist extends StatelessWidget {
  const PurposeExist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(mapViewModelProvider);
        return ListView.builder(
          itemCount: state.elements.length,
          itemBuilder: (context, index) {
            final element = state.elements[index];
            late Room roomData;
            if (element is Room) {
              roomData = element;
            }
            return ListTile(
              // title: Text(roomNameDict[roomData]),
              // subtitle: Text("(${element.x}, ${element.y})"),
              onTap: () {
                ref.read(naviViewModelProvider.notifier).setDestination(roomData.room);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const NaviView();
                }));
              },
            );
          },
        );
      },
    ));
  }
}
