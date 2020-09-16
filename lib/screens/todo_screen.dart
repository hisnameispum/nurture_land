import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    Container(
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
                    ),
                    Expanded(
                      child: Column(
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
                      ),
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

//class BottomBar extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: [
//            Icon(
//              Icons.book,
//              color: Colors.white,
//            ),
//            Icon(
//              Icons.add_circle,
//              color: Colors.white,
//              size: 50,
//            ),
//            Icon(
//              Icons.whatshot,
//              color: Colors.white,
//            ),
//          ],
//        ),
//        height: 50.0,
//        color: Color(0xFF00b894));
//  }
//}
