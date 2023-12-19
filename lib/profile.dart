import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:woolvoyage/category.dart';

class Reg extends StatefulWidget {
  const Reg({super.key});

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  final formkey = GlobalKey();
  TextEditingController dateinput = TextEditingController(); 
  TextEditingController dateinput1 = TextEditingController(); 
  
  @override
  Widget build(BuildContext context) {
     void initState() {
    dateinput.text = ""; 
    super.initState();
  }
   void initState1() {
    dateinput1.text = ""; 
    super.initState();
  }
  
    return Scaffold(
      
      appBar: AppBar(
         shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        topLeft: Radius.circular(0))),
        title: Text("Transport Registration"),
        centerTitle: true,
        backgroundColor:Color(0xFFe9dbff),
        leading: IconButton(onPressed:(){
          // Navigator.push(context, MaterialPageRoute(builder: (((context) => Category()))));
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_sharp)),

      ),
      backgroundColor: Color(0x93908b),

      body:SingleChildScrollView
      (
        child: Container
        (
          decoration: const BoxDecoration
          (
            image: DecorationImage
            (
              image: AssetImage("assets/bgimage.jpg"),
              fit:BoxFit.cover,
            ),
          ),
          child: Center
          (
            child:Form
            (
              key: formkey,
              child: Column
              (
                children: 
                [
                Container
                (
                  margin: const EdgeInsets.only(left: 15.0,bottom: 00,right: 15,top: 0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration
                  (
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white54
                  ),
                  child: Column
                  (children:
                   [
                    const Padding
                    (
                      padding: EdgeInsets.all(8.0),
                      child: TextField
                      (
                        style: TextStyle
                        (
                          color: Colors.black
                        ),
                        decoration: InputDecoration
                        (
                          enabledBorder: OutlineInputBorder
                          (
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: "Name",
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),
                    Padding
                    (
                      padding: const EdgeInsets.all(8.0),
                      child: TextField
                      (
                        decoration: InputDecoration
                        (
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                          hintText: "Phone Number",
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(onPressed:() {}, icon: Icon(Icons.add))
                        ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    
                    
                    
                  
                    
                    
                    
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                         decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: "Aadhar Card Number",
                          border: OutlineInputBorder()
                          
                                      
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        
                         decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: "PAN Card Number",
                          border: OutlineInputBorder()
                                      
                        ),
                      ),
                    ),
                    Row(
                      children: [
                         Expanded(
                           child: Padding(
                                                 padding: EdgeInsets.all(8.0),
                                                 child: TextField(
                                                   
                           decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                            ),
                            hintText: "License Number",
                            border: OutlineInputBorder()
                                        
                                                   ),
                                                 ),
                                               ),
                         ),
                    Expanded(
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                            ),
                            hintText: "RC Number",
                            border: OutlineInputBorder()
                                        
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),
                      
                     const Row(
                      children: [
                        Expanded(
                          child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: TextField(
                          decoration: InputDecoration(
                            enabledBorder:OutlineInputBorder(borderSide:BorderSide(color: Colors.black),), 
                             border: OutlineInputBorder(),
                             hintText: "Vehicle Number"
                          ),
                                                 ),
                                                ),
                        ),
                       Expanded(
                         child: Padding(
                                               padding: EdgeInsets.all(8.0),
                                               child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                            ),
                            hintText: "Vehicle Type",
                            border: OutlineInputBorder()
                                        
                          ),
                                               ),
                                             ),
                       ),
                      ],
                    ),
                    
                  
         
                    
                   
                    
                   
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: "Chesi Number",
                          border: OutlineInputBorder()
                                      
                        ),
                      ),
                    ),
                    
                     const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: "Modal Name",
                          border: OutlineInputBorder()
                                      
                        ),
                      ),
                    ),
                    
                    
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: "Modal",
                          border: OutlineInputBorder()
                                      
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: TextField(
                                      controller: dateinput, 
                                      decoration: InputDecoration( 
                                               suffixIcon: Icon(Icons.calendar_today),
                                               enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ),
                                               border: OutlineInputBorder(), 
                                               hintText: "Enter Delivery Date" 
                                      ),
                                      readOnly: true,  
                                      onTap: () async {
                                              DateTime? pickedDate = await showDatePicker(
                          context: context, initialDate: DateTime.now(),
                          firstDate: DateTime(2000), 
                          lastDate: DateTime(2101)
                                              );
                                              
                                              if(pickedDate != null ){
                          print(pickedDate);  
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                          print(formattedDate); 
                            
                                              
                          setState(() {
                             dateinput.text = formattedDate; 
                          });
                                              }else{
                          print("Date is not selected");
                                              }
                                      },
                                   ),
                                            ),
                        ),

                   Expanded(
                     child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                                      controller: dateinput1, 
                                      decoration: InputDecoration( 
                       suffixIcon: Icon(Icons.calendar_today),
                       border: OutlineInputBorder(),
                       enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                          ), 
                       hintText: "Enter Expiry Date" 
                                      ),
                                      readOnly: true,  
                                      onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context, initialDate: DateTime.now(),
                          firstDate: DateTime(2000), 
                          lastDate: DateTime(2101)
                      );
                      
                      if(pickedDate != null ){
                          print(pickedDate);  
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                          print(formattedDate); 
                            
                      
                          setState(() {
                             dateinput1.text = formattedDate; 
                          });
                      }else{
                          print("Date is not selected");
                      }
                                      },
                                   ),
                                       ),
                   ),
                      ],
                    ),
                    ]),
                ),
                
               Padding(
                 padding: const EdgeInsets.only(bottom:8.0,top:8.0),
                 child: SizedBox(
                  height: 50,
                   child: ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                   }, child: const Text("Confrim",),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffe9dbff),
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0)))
                   ),
                   ),
                 ),
               ),

             
              ]),
        ),
            )),
      ));
  }
}