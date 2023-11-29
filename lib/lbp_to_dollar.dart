import 'package:flutter/material.dart';

class LbpToDollar extends StatefulWidget {
  const LbpToDollar({super.key});

  @override
  State<LbpToDollar> createState() => _LbpToDollarState();
}

class _LbpToDollarState extends State<LbpToDollar> {
  TextEditingController lbpController=TextEditingController();
  double dollar=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("LBP To Dollar Converter"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller:lbpController ,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'Enter LBP need to convert',
                labelStyle: TextStyle(color: Colors.blue, fontSize: 15),
                suffix: Icon(Icons.currency_lira_sharp),
              ),

            ),

            const SizedBox(height: 30.0,),

            ElevatedButton(
                onPressed: (){
                  setState(() {
                    dollar=double.parse(lbpController.text) / 89500.0 ;
                  });
                },
                child: Text("Convert"),
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20.0),
                backgroundColor: Colors.black,
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text("Result : " +dollar.toString()+" \$",
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
