import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../main.dart';



class Farmer extends StatelessWidget {
  const Farmer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Farmerdetails(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Farmerdetails extends StatefulWidget {
  const Farmerdetails({super.key});

  @override
  State<Farmerdetails> createState() => _FarmerdetailsState();
}

class _FarmerdetailsState extends State<Farmerdetails> {
  List<Widget> textFields = [];
  int breedCardCount = 1;

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
                        'Farmer Details',
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
                                labelText: 'Address',
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
                            for (int i = 0; i < breedCardCount; i++)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  rowinput(Container(
                                    width: 2000,
                                    height: 300,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        buildInputBox(
                                          TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none, labelText: 'Types of Breed'),
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        buildInputBox(
                                          TextField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                            decoration: InputDecoration(
                                                border: InputBorder.none, labelText: 'No of Breed'),
                                          ),
                                        ),

                                        SizedBox(height: 16),

                                        SizedBox(
                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                                return Upload();
                                              }
                                              ));
                                            },
                                            style: ButtonStyle(
                                              minimumSize: MaterialStateProperty.all(Size(100, 40)),
                                              backgroundColor: MaterialStateProperty.all<Color>(
                                                Color(0xFFe9dbff),
                                              ),
                                            ),
                                            child: Text('Upload image'),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),),
                                  SizedBox(width: 10),
                                  IconButton(onPressed: (){addBreedCard();}, icon: Icon(Icons.add_circle,size: 70,color: Colors.black))
                                ],
                              ),
                            SizedBox(height: 10),
                            buildInputBox(
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MyListViewInputBox(),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Bank details'),
                            SizedBox(height: 10),
                            buildInputBox(
                              TextField(
                                decoration:
                                InputDecoration(border: InputBorder.none, labelText: 'Account Number'),
                              ),
                            ),
                            SizedBox(height: 16),
                            buildInputBox(
                              TextField(
                                decoration: InputDecoration(border: InputBorder.none, labelText: 'IFSC code'),
                              ),
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

                    onPressed: () async{
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


class MyListViewInputBox extends StatefulWidget {
  @override
  _MyListViewInputBoxState createState() => _MyListViewInputBoxState();
}

class _MyListViewInputBoxState extends State<MyListViewInputBox> {
  List<String> names = [
    'Government',
    'Private',
    'Local',
    'Export',

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




class Upload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MyImagePickerApp(),
    );
  }
}





class MyImagePickerApp extends StatefulWidget {
  @override
  _MyImagePickerAppState createState() => _MyImagePickerAppState();
}

class _MyImagePickerAppState extends State<MyImagePickerApp> {
  String? _imagePath;

  Future<void> _pickImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    } else {
      
    }
  }

  Future<void> _takePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    } else {
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'images/Sheep1.jpeg', 
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
                      child: Row(
                        children: [
                          IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return Farmerdetails();
                          }
                          ));}, icon: Icon(Icons.arrow_back,size: 40,color: Colors.black)),
                          SizedBox(width: 650,),
                          Text(
                            'Farmer Details',
                            style: TextStyle(fontSize: 25),
                          ),
                        ],

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 200,),
                Center(
                  child: Container(
                    width: 350,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _imagePath != null
                              ? Image.file(
                            File(_imagePath!),
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          )
                              : Container(),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: _pickImageFromGallery,
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(Size(350, 60)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFe9dbff).withOpacity(0.5),
                              ),
                            ),
                            child: Text('Gallery'),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: _takePicture,
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(Size(350, 60)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFe9dbff).withOpacity(0.5),
                              ),
                            ),
                            child: Text('Camera'),
                          ),

                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return Farmerdetails();
                              }
                              ));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFe9dbff).withOpacity(0.5),
                              ),
                            ),
                            child: Text('upload image'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }}
