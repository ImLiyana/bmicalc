import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BmiCalculator',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(mainAxisAlignment:MainAxisAlignment.center,
          children: [
           TextField(
             controller: weight,

             decoration: InputDecoration(
               filled: true,
               fillColor: Colors.white,
               hintStyle: TextStyle(color:Colors.black),
               hintText:"weight",
               border: OutlineInputBorder(
                   borderSide: BorderSide.none,
                   borderRadius: BorderRadius.circular(50)
               ),
             ),

            ),
 SizedBox(
   height: 25,
   width: 10,
 ),
            TextField(
              controller:height ,
              cursorColor: Colors.teal,
              style: TextStyle(
                  color: Colors.black
              ),
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintStyle: TextStyle(color:Colors.black),
    hintText:"height",
    border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(40)
    ),
    ),
            ),
            SizedBox(height: 20,),

            ElevatedButton(
                style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blueAccent),
                onPressed: () {
                  setState(() {
                    calculate();
                  });
                },
                  child: Text('calculateBmi')),
            SizedBox(height: 10,),
            Text(result.toString()),
          ]),
    );
  }
}
