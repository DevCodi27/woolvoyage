import 'package:flutter/material.dart';




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: eAuction(),
    );
  }
}

class eAuction extends StatefulWidget {
  const eAuction({super.key});

  @override
  State<eAuction> createState() => _eAuctionState();
}

class _eAuctionState extends State<eAuction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
          title: Text( 'eAuction'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              )
          ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  
                  
                },
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    
                    
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    
                    
                  },
                ),
              ],
            ),
          ),
          body: Center(
            child: Text('Hello, Flutter!'),
          ),


    );
  }
}
