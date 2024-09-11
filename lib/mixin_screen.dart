// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MixinScreen extends StatelessWidget with BuiltTimeOfWidget {
  const MixinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          measureBuildTime(() {
            return Container(
              height: 50,
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            );
          })
        ],
      ),
    );
  }
}

mixin BuiltTimeOfWidget {
  Widget measureBuildTime<T>(T Function() buildfunction) {
    final startTime = DateTime.now();
    buildfunction();
    final endTime = DateTime.now();
    final buildDuration = endTime.difference(startTime);
    print('time build ${buildDuration.inMilliseconds}');
    return Text(
      '${buildDuration.inMilliseconds} MilliSec Time Taken to Build this Widget',
      style: const TextStyle(fontSize: 20),
    );
  }
}
