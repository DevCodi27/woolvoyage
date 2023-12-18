import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: orders(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class orders extends StatefulWidget {
  const orders({super.key});

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  List<Widget> textFields = [];
  int breedCardCount = 1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'images/Sheep1.jpeg', // Replace with your image path
              fit: BoxFit.cover, // Cover the entire screen
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
                    width: MediaQuery.of(context).size.width,// Adjust width as needed
                    height: 60,
                    child: Center(
                      child: Text(
                        'Order',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
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
                                hintText: 'Product ID',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'User ID',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(
                              TextField(
                                decoration:
                                InputDecoration(border: InputBorder.none,
                                    hintText: 'Order Date'),
                              ),
                            ),
                            SizedBox(height: 10),
                            buildInputBox(
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Delivery Date'),
                              ),
                            ),

                            SizedBox(height: 10),
                            buildInputBox(
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Payment Means'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Payment status',
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

                    onPressed: () {},
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