import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [

            ],
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                      Icons.book,
                      color: Colors.white,
                  ),
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 50,
                  ),
                  Icon(
                    Icons.whatshot,
                    color: Colors.white,
                  ),
                ],
              ),
              height: 50.0,
              color: Color(0xFF00b894)),
        ],
      ),
    );
  }


}