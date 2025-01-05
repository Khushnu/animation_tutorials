import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {

CounterClass counter = CounterClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(), 
          Text('${counter.value}'), 
          const SizedBox(
            height: 20,
          ), 
          OutlinedButton(onPressed: counter.decrment, 
          child: const Text('Decrement'))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: counter.increment, child: const Icon(Icons.add),),
    );
  }
}


class CounterClass{
  int value;
  CounterClass({ this.value = 0});

  increment(){
    value++;
  }

  decrment(){
    value--;
  }
}