import 'package:flutter/material.dart';
import 'package:movie_app/pages/home.dart';
import 'package:movie_app/pages/home_movie.dart';
import 'package:movie_app/pages/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPage = 0;
  List<Widget> pages = [const Home(), const HomePage(), const Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 14, 14, 14),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: [
              buildNavItem(0, Icons.home),
              Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                  top: 0.0,
                  right: 0.0,
                  bottom: 30.0,
                ),
                child: buildNavItem(1, Icons.local_movies_rounded),
              ),
              buildNavItem(2, Icons.person),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(int index, IconData icon) {
    return Expanded(
      child: InkWell(
        onTap: () => onDestinationSelected(index),
        borderRadius: BorderRadius.circular(50),
        child: InkResponse(
          radius: 40, // Increase the radius for a larger circle
          splashColor: Colors.white,
          onTap: () => onDestinationSelected(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == currentPage
                      ? const Color.fromARGB(255, 32, 30, 30)
                      : Colors.transparent,
                ),
                padding: const EdgeInsets.all(
                    20), // Increase the padding for a larger circle
                child: Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onDestinationSelected(int index) {
    setState(() {
      currentPage = index;
    });
  }
}
