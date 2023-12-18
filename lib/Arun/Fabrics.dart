import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: fabrics(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class fabrics extends StatefulWidget {
  const fabrics({super.key});

  @override
  State<fabrics> createState() => _fabricsState();
}

class _fabricsState extends State<fabrics> {
  List<Widget> textFields = [];


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width, // Adjust width as needed
                    height: 60,
                    child: Center(
                      child: Text(
                        'Yarn Production',
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
                                hintText: 'Yarn ID',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Types of Wool',
                              ),
                            ),),
                            SizedBox(height: 10,),

                            buildInputBox(
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: MyListViewInputBox(),
                              ),
                            ),
                            SizedBox(height: 10),
                            buildInputBox(
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Pattern'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Fabric Produced'),
                            SizedBox(height: 10),
                            buildInputBox(
                              TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'EPI'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Length',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'PPI',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Width',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Reed Width',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Weigth',
                              ),
                            ),),
                            SizedBox(height: 10,),
                            buildInputBox(TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Time Taken',
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
class MyListViewInputBox extends StatefulWidget {
  @override
  _MyListViewInputBoxState createState() => _MyListViewInputBoxState();
}

class _MyListViewInputBoxState extends State<MyListViewInputBox> {
  List<String> names = [
    'White',
    'Cream',
    'Black',
    'Brown',
    'Fawn',

  ];

  TextEditingController _textEditingController = TextEditingController();
  String selectedName = '';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
              hintText: 'Colors',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              )
          ),
          readOnly: true,
          onTap: () {
            _showListView(context);
          },
        ),
        Positioned(
          top: 60,
          left: 0,
          right: 0,
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                  onTap: () {
                    setState(() {
                      selectedName = names[index];
                      _textEditingController.text = selectedName;
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }




  void _showListView(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(names[index]),
                onTap: () {
                  setState(() {
                    selectedName = names[index];
                    _textEditingController.text = selectedName;
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }
}


