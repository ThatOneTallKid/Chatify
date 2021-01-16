
import 'package:flutter/material.dart';

import 'child_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
 Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "neighborly",
          style: TextStyle(color: Color(0xFF0D4583)),
        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;

          switch (value) {
            case 0:
              childWidget = ChildWidget(number: AvailableNumber.First);
              break;
            case 1:
              childWidget = ChildWidget(number: AvailableNumber.Second);
              break;
            case 2:
              childWidget = ChildWidget(number: AvailableNumber.Third);
              break;
            case 3:
              childWidget = ChildWidget(number: AvailableNumber.Third);
              break;
          }

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Chat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text("Locate"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
         
        ],
      ),
      
    );
  }
}
