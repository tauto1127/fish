import 'dart:math';

import 'package:fish_hackathon/const/styles.dart';
import 'package:fish_hackathon/main.dart';
import 'package:fish_hackathon/view/navi_view.dart';
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
            return Expanded(
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: state.length,
                        itemBuilder: (context, index) {
                          final element = state[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: ListTile(
                              tileColor: Colors.grey[300],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              title: Text(element.roomType.name),
                              onTap: () {
                                ref
                                    .read(naviViewModelProvider.notifier)
                                    .setDestination(element.roomType);
                                ref
                                    .read(naviViewModelProvider.notifier)
                                    // .setMockBeaconData();
                                    .setStartPoint(point: const Point<int>(5000, 3000));
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
