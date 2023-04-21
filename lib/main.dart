import 'package:flutter/material.dart';

void main() {
  runApp(const GameApp());
}

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  final estilo = const TextStyle(color: Colors.white, fontSize: 32);

  bool icone1 = false;
  bool icone2 = false;
  bool icone3 = false;

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rede social'),
        ),
        body: ListView(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pessoa 1', style: estilo),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  icone1 == false
                                      ? icone1 = true
                                      : icone1 = false;
                                });
                              },
                              icon: Icon(icone1 == false
                                  ? Icons.heart_broken_outlined
                                  : Icons.heart_broken),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pessoa 2', style: estilo),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  icone2 == false
                                      ? icone2 = true
                                      : icone2 = false;
                                });
                              },
                              icon: Icon(icone2 == false
                                  ? Icons.heart_broken_outlined
                                  : Icons.heart_broken),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pessoa 3', style: estilo),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  icone3 == false
                                      ? icone3 = true
                                      : icone3 = false;
                                });
                              },
                              icon: Icon(icone3 == false
                                  ? Icons.heart_broken_outlined
                                  : Icons.heart_broken),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
