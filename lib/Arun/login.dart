import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: FirebaseOptions(
      apiKey: 'AIzaSyCqPHIM0CoPtwaibCpP8JzrMkjL1p_mNSs',
      appId: '1:316341132349:android:1922e16274ea92434d9e54',
      messagingSenderId: '316341132349',
      projectId: 'signin-c4a46',
      authDomain: 'your_auth_domain',
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  List<Widget> textFields = [];

  String _value  = '';

  get decoration => null;

  void _onSubmit(String value){

  }

  final GoogleSignIn _googleSignIn= GoogleSignIn();
  Future<UserCredential?>signInWithGoogle()async{

    await _googleSignIn.signOut();
    final GoogleSignInAccount? googleSignInAccount =(await _googleSignIn..signIn()) as GoogleSignInAccount?;
    final GoogleSignInAuthentication googleSignInAuthentication =await googleSignInAccount!.authentication;
    final OAuthCredential credential =GoogleAuthProvider.credential(accessToken:googleSignInAuthentication.accessToken,idToken: googleSignInAuthentication.idToken);
    final UserCredential userCredential =await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user!.displayName);
    print(userCredential.user!.email);
    print(userCredential.user!.metadata);


  }
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
                        'Login',
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 10,),
                            buildInputBox( TextField(

                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'email',
                                  hintText: 'eg:abc@gmail',
                                  icon: new Icon(Icons.people)
                              ),
                              onSubmitted: _onSubmit,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            ),
                            SizedBox(height: 10,),
                            buildInputBox(
                              TextField(
                                decoration: new InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'password',
                                    hintText: 'eg:abcd@1',
                                    icon: new Icon(Icons.password)
                                ),
                                onSubmitted: _onSubmit,
                                keyboardType: TextInputType.visiblePassword,
                              ),),
                            SizedBox(height: 25.0,),
                            GestureDetector(
                              child: Text("forgetpassword?"),
                              onTap: (){
                              },
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
                SizedBox(
                  height: 60,
                  width: 150,
                  child: ElevatedButton(

                    onPressed: signInWithGoogle,
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(150, 40)),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFe9dbff),
                      ),
                    ),
                    child: Wrap(children: [Text('Google Signin')],),
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


