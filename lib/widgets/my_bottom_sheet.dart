import 'package:flutter/material.dart';
class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 100,
        color: Colors.greenAccent,
        child: Row(
          children: [
            Expanded(

              child: GestureDetector(
                  child: Center(child: Text("Add Goal")),

                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          color: Colors.red,
                          child: Column(
                            children: [
                              Text("Enter your goal."),
                              TextField(),
                              FlatButton(child: Text('Enter'),),
                            ],
                          ),
                          height: 200,
                        ));
                  }
              ),
            ),
            Expanded(
              child: GestureDetector(
                  child: Center(child: Text("Add Todo")),
                  onTap: (){
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          color: Colors.green,
                          height: 200,
                        ));
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}