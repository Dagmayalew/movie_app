import 'package:flutter/material.dart';

import 'package:movie_app/classes/movie_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Movies',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ImageIcon(AssetImage('images/cart.png'),
                  size: 30, color: Colors.white),
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: const Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/batman2.png'),
                    ),
                  ),
                  Positioned(
                    bottom: 50.0,
                    child: Text(
                      'The Batman',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    child: Text(
                      "Get Your Tickets Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              MovieList()
            ],
          ),
        ));
  }
}
