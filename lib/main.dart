import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  get floatingActionButtonLocation => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Punya Ayash'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(130.0)),
            Text(
              "Halo!!!, kamu udah mencet ini   $count x",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                wordSpacing: 5,
                height: 0,
                fontSize: 50,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(
                    color: Colors.blue,
                    blurRadius: 5,
                    offset: Offset(5, 3),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.all(70.0)),
            SizedBox(
              width: 115,
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    elevation: 100,
                    splashColor: Colors.red,
                    onPressed: () {
                      setState(
                        () {
                          count += 1;
                        },
                      );
                    },
                    child: const Icon(Icons.plus_one),
                  ),
                  FloatingActionButton(
                    elevation: 100,
                    splashColor: Colors.red,
                    onPressed: () {
                      setState(
                        () {
                          count -= 1;
                          while (count < 0) {
                            count++;
                            if (count > 0) {
                              continue;
                            }
                          }
                        },
                      );
                    },
                    child: const Icon(
                      Icons.exposure_minus_1,
                      size: 25,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
