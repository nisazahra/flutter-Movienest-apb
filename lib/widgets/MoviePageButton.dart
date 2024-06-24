import 'package:flutter/material.dart';

class MoviePageButtons extends StatefulWidget {
  @override
  _MoviePageButtonsState createState() => _MoviePageButtonsState();
}

class _MoviePageButtonsState extends State<MoviePageButtons> {
  bool isThumbUpClicked = false;
  bool isThumbDownClicked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Thumb Up Icon
              InkWell(
                onTap: () {
                  setState(() {
                    isThumbUpClicked = !isThumbUpClicked;
                    if (isThumbUpClicked) {
                      isThumbDownClicked = false; // Reset other button
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isThumbUpClicked
                        ? Colors.green
                        : Color.fromARGB(255, 45, 45, 45),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 44, 43, 43),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.thumb_up_alt_sharp,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(width: 20), // Add some space between the icons
              // Thumb Down Icon
              InkWell(
                onTap: () {
                  setState(() {
                    isThumbDownClicked = !isThumbDownClicked;
                    if (isThumbDownClicked) {
                      isThumbUpClicked = false; // Reset other button
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isThumbDownClicked
                        ? Colors.red
                        : Color.fromARGB(255, 45, 45, 45),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 44, 43, 43),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.thumb_down_alt_sharp,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
