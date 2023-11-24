import 'package:flutter/material.dart';

class DollarToLbp extends StatefulWidget {
  const DollarToLbp({super.key});

  @override
  State<DollarToLbp> createState() => _DollarToLbpState();
}

class _DollarToLbpState extends State<DollarToLbp> {
  TextEditingController DollarController=TextEditingController();
  double lbp=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Dollar To LBP Converter '),

      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller:DollarController ,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Dollar need to convert'
              ),

            ),

            const SizedBox(height: 30.0,),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  lbp=double.parse(DollarController.text) * 89500;
                });
              },
              child: Text("Convert"),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text("Result : " +lbp.toString() +" LBP",
              style: TextStyle(
                fontSize: 30.0,
              ),

            ),
          ],
        ),
      ),

    );

  }
}
