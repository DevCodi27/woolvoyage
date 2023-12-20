import 'package:flutter/material.dart';
import 'package:woolvoyage/Arun/process.dart';



class Jobworker extends StatefulWidget {
  const Jobworker({super.key});

  @override
  State<Jobworker> createState() => _JobworkerState();
}

class _JobworkerState extends State<Jobworker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Select your Category'),
        centerTitle: true,
        backgroundColor: const Color(0xFFe9dbff),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          side: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
              height: 60,
              width: 1450,
              child: OutlinedButton(

                onPressed: () {
                },

                child: Text('Receiving'),
              ),
            ),

                SizedBox(
                  height: 60,
                  width: 1450,
                  child: OutlinedButton(

                    onPressed: () {
                    },

                    child: Text('Grading'),
                  ),
                ),

                SizedBox(
                  height: 60,
                  width: 1450,
                  child: OutlinedButton(

                    onPressed: () {
                    },

                    child: Text('Sorting'),
                  ),
                ),

                SizedBox(
                  height: 60,
                  width: 1450,
                  child: OutlinedButton(

                    onPressed: () {
                    },

                    child: Text('Process'),
                  ),
                ),

                SizedBox(
                  height: 60,
                  width: 1450,
                  child: OutlinedButton(

                    onPressed: () {
                    },

                    child: Text('Storing'),
                  ),
                ),

                SizedBox(
                  height: 60,
                  width: 1450,
                  child: OutlinedButton(

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckBoxLayout()));
                    },

                    child: Text('Package'),
                  ),
                ),
                
                SizedBox(
                  height: 60,
                  width: 1450,
                  child: OutlinedButton(

                    onPressed: () {
                    },

                    child: Text('Dispatch'),
                  ),
                ),
          ]),
        ),
      ),
    );
  }
}