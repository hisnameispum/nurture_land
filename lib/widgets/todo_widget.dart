import 'package:flutter/material.dart';

class Todo_widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '"Some random quote."',
          style: TextStyle(fontSize: 30),
        ),
        CircleAvatar(
          backgroundColor: Color(0xFF00b894),
          minRadius: 100,
        ),
        FlatButton(
          onPressed: () {
//                            Start Timer
          },
          padding: EdgeInsets.symmetric(
              vertical: 5, horizontal: 30),
          color: Colors.red,
          child: Text(
            'Start',
            style:
            TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ],
    );
  }
}