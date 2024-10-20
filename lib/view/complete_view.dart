import 'package:fish_hackathon/main.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class CompleteView extends StatelessWidget {
  const CompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MirasutaAppBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("お疲れ様でした！", style: TextStyle(fontSize: 38)),
            const SizedBox(
              height: 400,
            ),
            TextButton(
              child: const Text(
                "ホームに戻る",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () => Routemaster.of(context).replace('/'),
            )
          ],
        ),
      ),
    );
  }
}
