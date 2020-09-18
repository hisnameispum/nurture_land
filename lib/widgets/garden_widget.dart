import 'package:flutter/material.dart';

class Garden_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Garden_Avatar("Tree1"),
              Garden_Avatar("Tree2"),
              Garden_Avatar("Tree3"),
              Garden_Avatar("Tree4"),
            ]
          ),
        )
        ]

    );
  }
}

class Garden_Avatar extends StatelessWidget {

  final String treeName;

  Garden_Avatar(@required this.treeName);

  String checkTreeName(){
    if (treeName != null){
      return treeName;
    }
    else {
      return "Your pot is empty";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(

        backgroundColor: Colors.green[100],
        child: Text(checkTreeName()),

      ),
    );
  }
}