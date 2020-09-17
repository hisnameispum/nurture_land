import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nurture_land/widgets/garden_widget.dart';
import 'package:nurture_land/widgets/todo_widget.dart';

class Todo_Screen extends StatefulWidget {
  @override
  _Todo_ScreenState createState() => _Todo_ScreenState();
}

class _Todo_ScreenState extends State<Todo_Screen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SafeArea(
              child: Expanded(
                child: Column(
                  children: [
                    _selectedIndex == 0 ? TopBarStory(): Container(),
                    Expanded(
                      child: _selectedIndex == 0 ? Todo_widget() : Garden_Widget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF00b894),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('To-do'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 60, color: Colors.amberAccent),
              title: Text(''),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.nature),
              title: Text('Garden'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ));
  }
}



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

class TreeStory extends StatelessWidget {
  final String treeName;
  final Color treeColor;

  TreeStory({@required this.treeName, @required this.treeColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: CircleAvatar(
        backgroundColor: treeColor,
        child: Text(treeName),
        minRadius: 35,
      ),
    );
  }
}

