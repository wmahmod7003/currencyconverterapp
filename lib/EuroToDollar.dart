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
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              controller: EuroController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                // hintText: 'Enter Euro need to convert',
                // helperStyle:TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                labelText: 'Enter Euro need to convert',
                labelStyle: TextStyle(color: Colors.blue, fontSize: 15),
                suffix: Icon(Icons.euro),
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
