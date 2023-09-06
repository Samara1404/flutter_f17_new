import 'package:flutter/material.dart';

import 'components/drawer.dart';
import 'components/piano_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Driwerse(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('MY PIANO APP'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Row(
                        children: [
                          PianoWhiteButton(name: 'c3'),
                          PianoWhiteButton(name: 'd3'),
                          PianoWhiteButton(name: 'e3'),
                          PianoWhiteButton(name: 'f3'),
                          PianoWhiteButton(name: 'g3'),
                          PianoWhiteButton(name: 'a3'),
                          PianoWhiteButton(name: 'b3'),
                        ],
                      ),
                      Positioned(
                        height: 200,
                        left: 25,
                        right: 15,
                        child: Row(
                          children: [
                            PianoBlackButton(name: 'c-3'),
                            PianoBlackButton(name: 'd-3'),
                            const SizedBox(width: 50),
                            PianoBlackButton(name: 'f-3'),
                            PianoBlackButton(name: 'g-3'),
                            PianoBlackButton(name: 'a-3'),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
