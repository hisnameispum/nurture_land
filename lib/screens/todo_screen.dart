import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nurture_land/widgets/garden_widget.dart';
import 'package:nurture_land/widgets/todo_widget.dart';
import 'package:nurture_land/widgets/my_bottom_sheet.dart';
import 'package:nurture_land/widgets/top_bar_story.dart';

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

  Widget getTopScreen(){
    if (_selectedIndex == 0){
      return TopBarStory();
    }
    else if (_selectedIndex == 1){
      return Container();
    }
    else {
      return Container();
    }
  }



  Widget getMainScreen(){
    if (_selectedIndex == 0){
      return Todo_widget();
    }
    else if (_selectedIndex == 2){
      return Garden_Widget();
    }
    else {
    return MyBottomSheet();
    }
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
                    getTopScreen(),
                    Expanded(
                      child: getMainScreen(),
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
        ),
    );
  }
}





