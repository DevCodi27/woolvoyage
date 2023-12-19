import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:woolvoyage/Arun/login.dart';
import 'package:woolvoyage/main.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: agent(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class agent extends StatefulWidget {
  const agent({super.key});

  @override
  State<agent> createState() => _agentState();
}

class _agentState extends State<agent> {
  List<Widget> textFields = [];
  int breedCardCount = 1;
  String selectedName = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/bgimage.jpg', 
              fit: BoxFit.cover, 
            ),
            Column(
              children: [
                Card(
                  color: Colors.white.withOpacity(0.2),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(25),
                    ),
                  ),
                  margin: EdgeInsets.all(0),
                  child: Container(
                    width: MediaQuery.of(context).size.width, 
                    height: 60,
                    child: Center(
                      child: Text(
                        'Agent Details',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
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
                        width: screenWidth * 0.9, 

                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Name',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Addresss',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                rowinput(TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                  decoration: InputDecoration(

                                    border: InputBorder.none,
                                    labelText: 'Phone Number 1',
                                  ),
                                ),),
                                SizedBox(width: 15,),
                                IconButton(
                                  onPressed: () {
                                    addPhoneNumberField();
                                  },
                                  icon: Icon(Icons.add_circle, size: 70, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(height: 10), 
                            Column(
                              children: textFields.map((textField) => buildInputBox(textField)).toList(),
                            ),
                            
                            SizedBox(height: 10),
                            

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
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
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

  void addPhoneNumberField() {
    setState(() {
      textFields.add(
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none, labelText: 'Phone Number ${textFields.length + 2}'),
        ),
      );
    });
  }

  void addBreedCard() {
    setState(() {
      breedCardCount++;
    });
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

Widget rowinput(Widget textField) {
  return Container(
    width: 1150,
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


