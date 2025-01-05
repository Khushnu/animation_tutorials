import 'package:animation_tutorials/counter.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
 group('Counter testing', (){
  test('Increment Counter', (){
    CounterClass counterClass = CounterClass(value: 4);
    counterClass.increment();
    expect(counterClass.value, 5);
  });

  test('Decrement Test', (){
    CounterClass counterClass = CounterClass(value: 4);
    counterClass.decrment();
    expect(counterClass.value, 3);
  });

 });
}