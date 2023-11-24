import 'package:flutter/material.dart';

class EuroToDollar extends StatefulWidget {
  const EuroToDollar({super.key});

  @override
  State<EuroToDollar> createState() => _EuroToDollarState();
}

class _EuroToDollarState extends State<EuroToDollar> {
  TextEditingController EuroController=TextEditingController();
  double dollar=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:Text("Euro To Dollar Converter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              controller: EuroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Euro need to convert',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            ElevatedButton(
                onPressed: (){
                  setState(() {
                    dollar=double.parse(EuroController.text) * 1.2;
                  });
                },
                child: Text("Convert")),

            SizedBox(
              height: 30.0,
            ),

            Text(
              "Dollar: "+dollar.toString()+ "\$",
              style:TextStyle(
                fontSize: 30.0
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
