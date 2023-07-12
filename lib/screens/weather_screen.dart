import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.4), BlendMode.exclusion),
                  image: const NetworkImage(
                    'https://source.unsplash.com/random/?city,sun',
                  ),
                  fit: BoxFit.cover)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.wb_sunny_outlined,
                    size: 80,
                  ),
                  const Row(
                    children: [
                      Text(
                        '31',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 80),
                      ),
                      Column(
                        children: [
                          Text('O',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                          Text('--',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                          Text('now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'Grab\nsunglasses',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                  ),
                  const Text(
                    'It\'s super sunny in Barclona',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.all(32),
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: const Color(0xFF7CCCC9),
                        borderRadius: BorderRadius.circular(32)),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '07h 12min',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wb_sunny_outlined,
                                color: Colors.white,
                                size: 36,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                'Before Sunset!',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ],
                          )
                        ]),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
