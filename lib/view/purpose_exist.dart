import 'package:fish_hackathon/const/styles.dart';
import 'package:fish_hackathon/main.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/view/navi_view.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/navi_view_model.dart';
import 'package:fish_hackathon/view_model/purpose_exist_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PurposeExist extends StatelessWidget {
  const PurposeExist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MirasutaAppBar,
        body: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(purposeExistViewModelProvider);
            return Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: MirasutaTextFormFieldDecoration,
                      onChanged: (value) {
                        ref.read(purposeExistViewModelProvider.notifier).search(value);
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.length,
                      itemBuilder: (context, index) {
                        final element = state[index];
                        return ListTile(
                          title: Text(element.room.name),
                          //subtitle: Text("(${element.x}, ${element.y})"),
                          onTap: () {
                            ref.read(naviViewModelProvider.notifier).setDestination(element.room);
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return const NaviView();
                            }));
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
