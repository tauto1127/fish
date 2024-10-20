import 'dart:math';

import 'package:fish_hackathon/const/styles.dart';
import 'package:fish_hackathon/main.dart';
import 'package:fish_hackathon/model/direction.dart';
import 'package:fish_hackathon/model/map_model.dart';
import 'package:fish_hackathon/view/navi_view.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/navi_view_model.dart';
import 'package:fish_hackathon/view_model/purpose_exist_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class PurposeExist extends StatelessWidget {
  const PurposeExist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MirasutaAppBar,
        body: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(purposeExistViewModelProvider);
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: MirasutaTextFormFieldDecoration,
                      onChanged: (value) {
                        ref
                            .read(purposeExistViewModelProvider.notifier)
                            .search(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "- 3F",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: state.length,
                        itemBuilder: (context, index) {
                          final element = state[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: ListTile(
                              tileColor: Colors.grey[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              title: Text(element.roomType.displayName),
                              onTap: () {
                                ref
                                    .read(naviViewModelProvider.notifier)
                                    .setDestination(element.roomType);
                                ref
                                    .watch(naviViewModelProvider.notifier)
                                    .moveToDestinationMock(
                                        destinationPoint: ref
                                            .watch(mapViewModelProvider)
                                            .roomDict![ref
                                                .watch(naviViewModelProvider)
                                                .destinationRoom]!
                                            .door);
                                Routemaster.of(context).push('/navi');
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
