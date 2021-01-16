import 'package:chatify/screens/locate1.dart';
import 'package:flutter/material.dart';
import 'child_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int _index = 0;
  Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );
  @override
  Widget build(BuildContext context) {
    Widget child;
  switch (_index) {
    case 0:
      child = FlutterLogo();
      break;
    case 1:
      child = MyHomePage();
      break;
    case 2:
      child = FlutterLogo(colors: Colors.red);
      break;
  }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "neighborly",
          style: TextStyle(color: Color(0xFF0D4583)),
        ),
      ),
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        
        onTap: (newIndex) => setState(() => _index = newIndex),
      currentIndex: _index,
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
