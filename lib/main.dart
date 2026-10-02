import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {
  int currentNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('カウンター')),
      body: Center(
        child: Text('$currentNumber', style: const TextStyle(fontSize: 48)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            bool isPrime = false;
            while (!isPrime) {
              isPrime = true;
              if (currentNumber == 2) {
                currentNumber++;
              } else {
                currentNumber += 2;
              }
              int sq = sqrt(currentNumber).floor();
              
              for (int k = 2; k <= sq; k++) {
                if (currentNumber % k == 0) {
                  isPrime = false;
                  break;
                }
              }
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
