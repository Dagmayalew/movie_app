import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int selectedButtonIndex = 0;
  bool showMovies = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Wrap(
                  children: [
                    buildTextButton(0, 'On Theater'),
                    buildTextButton(1, 'Pre Order'),
                    buildTextButton(2, 'Coming Soon'),
                    // Add more buttons as needed
                    if (showMovies)
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Card(
                          color: Colors.black,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text('Available today',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 15.0,
                                      top: 6.0,
                                      right: 11.0,
                                      bottom: 8.0,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width: 150.0, // specify the width
                                        height: 200.0, // specify the height
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          child: Image(
                                            image: AssetImage(
                                                'images/Left_movie_poster.png'),
                                            fit: BoxFit
                                                .cover, // adjust the fit property if needed
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 0.0,
                                      top: 6.0,
                                      right: 13.0,
                                      bottom: 8.0,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width: 150.0, // specify the width
                                        height: 200.0, // specify the height
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          child: Image(
                                            image: AssetImage(
                                                'images/Right_movie_poster.png'),
                                            fit: BoxFit
                                                .cover, // adjust the fit property if needed
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  TextButton buildTextButton(int index, String text) {
    return TextButton(
      onPressed: () {
        setState(() {
          showMovies = !showMovies;
          selectedButtonIndex = index;
        });
      },
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.black, // Background color
          border: selectedButtonIndex == index
              ? const Border(
                  bottom: BorderSide(color: Colors.yellow, width: 1.5))
              : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
          child: Text(
            text,
            style: TextStyle(
              color: selectedButtonIndex == index ? Colors.white : Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
