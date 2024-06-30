import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Lottery App'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Lottery Wining Number is 4',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(color: Colors.red.withOpacity(.2)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 4
                      ? const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.green,
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                'Congratulations , You Won',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Better luck Next time your number is $x \n try again',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            x = random.nextInt(10);
            const Text('Tap');
            print(x);
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
