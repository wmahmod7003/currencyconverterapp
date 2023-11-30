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
        title: const Text("LBP To Dollar Converter"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
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
                labelStyle: const TextStyle(color: Colors.blue, fontSize: 15),
                suffix: const Icon(Icons.currency_lira_sharp),
              ),

            ),

            const SizedBox(height: 30.0,),

            ElevatedButton(
                onPressed: (){
                  setState(() {
                    dollar=double.parse(lbpController.text) / 89500.0 ;
                  });
                },
                child: const Text("Convert"),
                style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20.0),
                backgroundColor: Colors.black,
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            const SizedBox(
              height: 30.0,
            ),

            Text("Result : " +dollar.toString()+" \$",
              style: const TextStyle(
                fontSize: 30.0,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
