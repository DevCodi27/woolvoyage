// main.dart

import 'package:flutter/material.dart';
import 'package:woolvoyage/viji1.dart';
import 'package:woolvoyage/wool_tracking.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wool Voyage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Define your pages here
  final List<Widget> _pages = [
    MyHomePageContent(),
    Blank(),
    Blank(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 1) {
        _showPopup(context);
      }
    });
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text('Enter the '),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: "Enter ID"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WoolTracker()),
                    );
                  },
                  child: Text("Enter"),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wool Voyage'),
        centerTitle: true,
        backgroundColor: Color(0xFFe9dbFF),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_sharp),
            label: 'Wool Tracking',
          ),
          BottomNavigationBarItem(
            icon: TextButton(onPressed: (){
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ecommerce()),
                    );
            },child: Icon(Icons.trolley,),style: TextButton.styleFrom(foregroundColor: Colors.black),),
            label: 'E-commerce',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.trending_neutral_sharp),
          //   label: 'Settings',
          // ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

class MyHomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Page'),
    );
  }
}

class Blank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center();
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Wool mar'),
    );
  }
}

// class PageFour extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Settings Page'),
//     );
//   }
// }
