import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Agent extends StatelessWidget {
  const Agent({super.key});

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
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/bgimage.jpg', // Replace with your image path
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
                    width: MediaQuery.of(context).size.width, // Adjust width as needed
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
                        width: screenWidth * 0.9, // 80% of screen width

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
                            SizedBox(height: 10), // Dynamic phone number inputs
                            Column(
                              children: textFields.map((textField) => buildInputBox(textField)).toList(),
                            ),
                            SizedBox(height: 10),
                            buildInputBox(
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MyListViewInputBox(onNameSelected: (name) {
                                  setState(() {
                                    selectedName = name;
                                  });
                                },),
                              ),
                            ),
                            SizedBox(height: 10),
                            for (int i = 0; i < breedCardCount; i++)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (selectedName.isNotEmpty)
                                    buildInputBox(
                                      Container(
                                        width: 1200, // Adjust the width as needed
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(' $selectedName'),
                                            SizedBox(height: 10),
                                            buildInputBox(
                                              TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  labelText: 'Types of Breed',
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            buildInputBox(
                                              TextField(
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  labelText: 'Price',
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                            IconButton(
                                              onPressed: () {
                                                addBreedCard();
                                              },
                                              icon: Icon(Icons.add_circle, size: 70, color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              ),

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


class MyListViewInputBox extends StatefulWidget {
  final Function(String) onNameSelected;

  MyListViewInputBox({required this.onNameSelected});

  @override
  _MyListViewInputBoxState createState() => _MyListViewInputBoxState();
}

class _MyListViewInputBoxState extends State<MyListViewInputBox> {
  List<String> names = [
    'Raw Wool',
    'Yarn',
    'Garments',
    'Washed Wool',
    'other products',
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
              hintText: 'Willing to sell under',
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
                    widget.onNameSelected(names[index]);
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
                  widget.onNameSelected(names[index]);
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