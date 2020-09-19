import 'package:flutter/material.dart';
class TreeStory extends StatelessWidget {
  final String treeName;
  final Color treeColor;

  TreeStory({@required this.treeName, @required this.treeColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Draggable(
        data: 'Flutter',
        child: CircleAvatar(
          backgroundColor: treeColor,
          child: Text(treeName),
          minRadius: 35,
        ),
        feedback: CircleAvatar(
          backgroundColor: treeColor,
          child: Text(treeName),
          minRadius: 35,
        ),
        childWhenDragging: Container(),
      ),
    );
  }
}