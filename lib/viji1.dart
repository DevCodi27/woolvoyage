import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:woolvoyage/main.dart';

import 'viji2.dart';
// import 'package:woolecommers/secondpage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    buttonpage(),
    HomePage1(),
    // SettingsPage(),
    // SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'E-commerce',
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Color(0xffe9dbff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(190),
            bottomLeft: Radius.circular(198),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xffe9dbff),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Container(
                padding: EdgeInsets.fromLTRB(15, 2, 15, 2),
                child: Text(
                  "Hello viji",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontStyle: FontStyle.italic),
                ),
              ),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "assets/logo.jpg",
                ),
                radius: 100.0,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0), BlendMode.dstATop),
                  image: AssetImage("assets/LOGO.png"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text(
                "My Profile",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      body: Center(
                        child: Text("profile page"),
                      ),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigate to the home page
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.wb_incandescent_sharp,
                color: Colors.black,
              ),
              title: Text(
                "Your Orders",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      body: Center(
                        child: Text("Your Orders"),
                      ),
                    ),
                  ),
                );
              },
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.live_help_outlined,
            //     color: Colors.black,
            //   ),
            //   title: Text(
            //     "Your order",
            //     style: TextStyle(fontWeight: FontWeight.bold),
            //   ),
            //   onTap: () {
            //     // Handle tap for "Your order"
            //   },
            // ),
            ListTile(
              leading: Icon(
                Icons.volunteer_activism,
                color: Colors.black,
              ),
              title: Text(
                "Reviews",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Handle tap for "Reviews"
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      body: Center(
                        child: Text("Settings"),
                      ),
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text(
                "Share",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      body: Center(
                        child: Text("Share"),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.category, size: 30),
          Icon(Icons.home, size: 30),
          // Icon(Icons.settings, size: 30),
        ],
        color: Color(0xffe9dbff),
        buttonBackgroundColor: Color(0xffe9dbff),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          // Handle navigation bar item taps
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Background Image
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bgimage.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2),
                      BlendMode.dstATop,
                    ),
                  ),
                ),
              ),
              Center(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(10),
                  crossAxisCount: 2,
                  children: [
                    _buildGridItem("Angoro Wool", "assets/angorowool.jpg"),
                    _buildGridItem("Knitting wool", "assets/knittingwool.jpg"),
                    _buildGridItem("Merino Wool", "assets/merinowool.jpg"),
                    _buildGridItem("Raw Sheep Wool", "assets/sheepwool.jpeg"),
                    _buildGridItem("Wollen Shawls", "assets/shawl.jpg"),
                    _buildGridItem("Wool Fibers", "assets/woolfibre.jpg"),
                    _buildGridItem("Wool Tops", "assets/wooltopas.jpg"),
                    _buildGridItem("Yarn", "assets/yarn.jpeg"),
                    _buildGridItem("Greasy wool", "assets/greasywool.jpg"),
                    _buildGridItem("Sheep wool", "assets/sheepwool.jpg"),
                    _buildGridItem("Washed wool", "assets/washedwool.jpg"),
                    // _buildGridItem("Item 8", "assets/.jpeg"),
                  ],
                ),
              ),
            ], // Correctly close the Stack widget
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String itemName, String imagePath) {
    return Container(
      margin: EdgeInsets.all(7.0),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            itemName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildGridItem(String itemName, String imagePath) {
  return Container(
    margin: EdgeInsets.all(7.0),
    child: Column(
      children: [
        Container(
          width: 100,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        Text(
          itemName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ],
    ),
  );
}