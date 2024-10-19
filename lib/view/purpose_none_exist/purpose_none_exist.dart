import 'package:fish_hackathon/const/styles.dart';
import 'package:fish_hackathon/main.dart';
import 'package:fish_hackathon/model/map_element.dart';
import 'package:fish_hackathon/view/purpose_none_exist/spot_box.dart';
import 'package:fish_hackathon/view_model/map_view_model.dart';
import 'package:fish_hackathon/view_model/recommend_spot_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PurposeNoneExist extends StatelessWidget {
  const PurposeNoneExist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MirasutaAppBar,
      body: Expanded(
        child: Column(
          children: [
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: MirasutaTextFormFieldDecoration,
                    onChanged: (value) {
                      ref
                          .read(recommendSpotViewModelProvider.notifier)
                          .filter(value);
                    },
                  ),
                );
              },
            ),
            const Text(
              "未来大おすすめスポット",
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              child: Consumer(builder: (context, ref, _) {
                final state = ref.watch(recommendSpotViewModelProvider);
                final mapState = ref.watch(mapViewModelProvider);
                return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: SpotBox(
                            //name: mapState.elements[index].name,
                            // name: mapState.elements[state.filteredSpots[index].mapElementIndex].name,
                            name: (mapState.elements[state.filteredSpots[index].mapElementIndex] as Room).roomType.displayName,
                            imagePath: state.filteredSpots[index].imagePath,
                            subText: state.filteredSpots[index].subText,
                          ),
                        );
                      },
                      itemCount: state.filteredSpots.length,
                    ));
              }),
            ),
          ],
        ),
      ),
    );
  }
}
