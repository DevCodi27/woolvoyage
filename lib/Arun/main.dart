// import 'package:flutter/material.dart';
// import 'package:woolvoyage/agent.dart';

// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: eAuction(),
//           debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class eAuction extends StatefulWidget {
//   const eAuction({super.key});

//   @override
//   State<eAuction> createState() => _eAuctionState();
// }

// class _eAuctionState extends State<eAuction> {

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(

//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.lightBlueAccent.withOpacity(0.8),
//         title: Text('eAuction'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Handle search icon press
//               // Add your custom logic here
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             Text('Sort by'),
//             ListTile(
//               title: Text('Price - low to high'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             ListTile(
//               title: Text('Price - high to low'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             ListTile(
//               title: Text('Best Value'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             ListTile(
//               title: Text('Recently Added'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             ListTile(
//               title: Text('Best Value'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             Text('Category'),
//             ListTile(
//               title: Text('Merino Wool'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             ListTile(
//               title: Text('Cashmere'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             ListTile(
//               title: Text('Mohair'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//             ListTile(
//               title: Text('Alpaca Wool'),
//               onTap: () {
//                 // Handle drawer item press
//                 // Add your custom logic here
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Container(
//           child: Column(
//             children: [
//               Card(
//                 margin: EdgeInsets.all(16.0),
//                 child: ListTile(
//                   title: Text('Product 1'),
//                   subtitle: Text('Description of Product 1'),
//                   // Add your custom logic for handling taps on this card
//                   onTap: () {
//                     // Handle card tap
//                     // Add your custom logic here
//                   },
//                 ),
//               ),
//               Card(
//                 margin: EdgeInsets.all(16.0),
//                 child: ListTile(
//                   title: Text('Product 2'),
//                   subtitle: Text('Description of Product 2'),
//                   // Add your custom logic for handling taps on this card
//                   onTap: () {
//                     // Handle card tap
//                     // Add your custom logic here
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),


//     );
//   }
// }
