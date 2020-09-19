import 'package:flutter/material.dart';
import 'tree_story.dart';
class TopBarStory extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TreeStory(
            treeName: "Tree1",
            treeColor: Colors.orange,
          ),
          TreeStory(
            treeName: "Tree2",
            treeColor: Colors.red,
          ),
          TreeStory(
            treeName: "Tree3",
            treeColor: Colors.blue,
          ),
          TreeStory(
            treeName: "Tree4",
            treeColor: Colors.purple,
          ),
          TreeStory(
            treeName: "Tree5",
            treeColor: Colors.yellow,
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 0.2, color: Colors.greenAccent)),
      ),
    );
  }
}





