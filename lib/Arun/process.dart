import 'package:flutter/material.dart';


class CheckBoxLayout extends StatefulWidget {
  @override
  _CheckBoxLayoutState createState() => _CheckBoxLayoutState();
}

class _CheckBoxLayoutState extends State<CheckBoxLayout> {
  List<bool> isCheckedList = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Checkboxes Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCheckBoxRow('Package ID 01', 0),
            buildCheckBoxRow('Package ID 02', 1),
            buildCheckBoxRow('Package ID 03', 2),
            buildCheckBoxRow('Package ID 04', 3),
            buildCheckBoxRow('Package ID 05', 4),
            buildCheckBoxRow('Package ID 06', 5),
            SizedBox(height: 20), // Add some spacing between the last checkbox row and the ElevatedButton
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
                child: Text('Calculate'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCheckBoxRow(String text, int index) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 120,),
          buildInputBox(Text(text)),
          SizedBox(width: 20,),
          Checkbox(
            value: isCheckedList[index],
            onChanged: (value) {
              setState(() {
                isCheckedList[index] = value!;
              });
            },
            visualDensity: VisualDensity(horizontal: 4.0, vertical: 4.0),
          ),
        ],
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