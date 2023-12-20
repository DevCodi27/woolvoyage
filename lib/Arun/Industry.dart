import 'package:flutter/material.dart';
import 'package:woolvoyage/Arun/jobworker.dart';
import 'package:woolvoyage/Arun/processTracking.dart';
// import 'package:woolvoyage/Arun/processTracking.dart';
import 'package:woolvoyage/profile.dart';
// import 'package:woolvoyage/search.dart';

import '../category.dart';

List list = ["Roll","Genral Manager","Data Manager","Technical Team","Supervisor","Jobworker","Transporter"];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Industry(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Industry extends StatefulWidget {
  const Industry({super.key});

  @override
  State<Industry> createState() => _IndustryState();
}

class _IndustryState extends State<Industry> {
  List<Widget> textFields = [];
  int breedCardCount = 1;
  String selectedRole = "Roll";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title:Text('Industry'),
          centerTitle: true,
          backgroundColor: Color(0xFFe9dbFF),
          leading: IconButton(
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: ((context) => Category())));
            },
            icon: Icon(Icons.arrow_back)),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/bgimage.jpg', // Replace with your image path
              fit: BoxFit.cover, // Cover the entire screen
            ),
            Column(
              children: [
                // Card(
                //   color: Colors.white.withOpacity(0.2),
                //   elevation: 10,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.vertical(
                //       bottom: Radius.circular(25),
                //     ),
                //   ),
                //   margin: EdgeInsets.all(0),
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,// Adjust width as needed
                //     height: 60,
                //     child: Center(
                //       child: Text(
                //         'Industry',
                //         style: TextStyle(fontSize: 25),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 20,),
                Expanded(
                  child: Card(
                    color: Colors.white.withOpacity(0.2),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    margin: EdgeInsets.all(0),
                    child: SingleChildScrollView(
                      child: Container(
                        width: screenWidth * 0.9, // 80% of screen width

                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Name',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Phone Number',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(
                              TextField(
                                decoration:
                                InputDecoration(border: InputBorder.none,
                                    hintText: 'Address'),
                              ),
                            ),
                            SizedBox(height: 10),
                            buildInputBox(
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Aadhar Number'),
                              ),
                            ),

                            SizedBox(height: 10),
                            buildInputBox(
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Organization Name'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Branch',
                              ),
                            ),),


                            // SizedBox(height: 10,),
                            // buildInputBox(TextField(
                            //   decoration: InputDecoration(
                            //     border: InputBorder.none,
                            //     hintText: 'Role',
                            //   ),
                            // ),),

                             SizedBox(height: 20,
                             width: 300,),
        Container(
           decoration: BoxDecoration(
                        border: Border.all(
                            color:Colors.black),
                            borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(8),
                    margin: const EdgeInsets.only(left: 60,right: 60),
         
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: selectedRole,
              isExpanded: true,
              alignment: Alignment.center,
              items:list.map((role) {
                return DropdownMenuItem(
                  value: role,
                  child: Text(role),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedRole = value.toString();
                });
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        // Text(
        //   'Selected Role: $selectedRole',
        //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        // ),


                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'ID Number',
                              ),
                            ),),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  width: 150,
                  child: ElevatedButton(

                    onPressed: () {
                     navigateToPage(selectedRole);
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(150, 40)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFe9dbff),
                      ),
                    ),
                    child: Text('SUBMIT'),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void navigateToPage(String selectedRole) {
  switch (selectedRole) {
    case "Genral Manager":
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProcessTracker()));
      break;
    case "Data Manager":
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProcessTracker()));
      break;
      case "Technical Team":
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProcessTracker()));
      break;
      case "Supervisor":
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProcessTracker()));
      break;
      case "Jobworker":
      Navigator.push(context, MaterialPageRoute(builder: (context) => Jobworker()));
      break;
      case "Transporter":
      Navigator.push(context, MaterialPageRoute(builder: (context) => Reg()));
      break;
    // Add more cases for other roles
    default:
      break;
  }
}
  Widget buildInputBox(Widget textField) {
    return Container(
      width: 1250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(6.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: textField,
    );
  }

}