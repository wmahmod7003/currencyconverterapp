import 'package:flutter/material.dart';

class DollarToEuro extends StatefulWidget {
  const DollarToEuro({super.key});
  @override
  State<DollarToEuro> createState() => _DollarToEuroState();
}

class _DollarToEuroState extends State<DollarToEuro> {
  TextEditingController DollarControllar=TextEditingController();
  double euro=0.0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Dollar To Euro Converter"),
      ),
      body:Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              controller:DollarControllar ,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Dollar need to convert',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    euro=double.parse(DollarControllar.text)/1.2;
                  });
                },
                child: Text('Convert')
            ),

            SizedBox(
              height: 30.0,
            ),

            Text("Result : " +euro.toString() +" \€",
              style: TextStyle(
                fontSize: 30.0,
              ),

            ),

          ],
        ),
      ) ,
    );
  }
}
