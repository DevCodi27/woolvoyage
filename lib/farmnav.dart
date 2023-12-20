import 'package:flutter/material.dart';

import 'package:woolvoyage/faemtrack.dart';
import 'package:woolvoyage/viji1.dart';

import 'category.dart';
import 'help.dart';


class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  int _selectedIndex = 0;

  // Define your pages here
  final List<Widget> _pages = [
    MyHomePageContent(),
    Blank(),
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
                      MaterialPageRoute(builder: (context) => FarmTracker()),
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
                 Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage2()));
                // Navigator.pop(context);
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
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => Category())));
        },icon: Icon(Icons.arrow_back)),
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
            label: 'Gradle Tracking',
          ),
          BottomNavigationBarItem(
            icon: TextButton(onPressed: (){
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()),
                    );
            },child: Icon(Icons.trolley,),style: TextButton.styleFrom(foregroundColor: Colors.black),),
            label: 'E-commerce',
          ),
           BottomNavigationBarItem(
            icon: TextButton(onPressed: (){
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Help()),
                    );
            },child: Icon(Icons.school,),style: TextButton.styleFrom(foregroundColor: Colors.black),),
            label: 'Education & Training',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.trending_neutral_sharp),
          //   label: 'Settings',
          // ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.blue,
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
