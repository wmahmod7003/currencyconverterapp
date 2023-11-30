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
        title: const Text("Dollar To Euro Converter"),
        backgroundColor: Colors.black,
      ),
      body:Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              controller:DollarControllar ,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'Enter Dollar need to convert',
                labelStyle: const TextStyle(color: Colors.blue, fontSize: 15),
                suffix: const Icon(Icons.currency_exchange),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    euro=double.parse(DollarControllar.text)/1.2;
                  });
                },
                child: const Text('Convert'),
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

            Text("Result : " +euro.toString() +" \€",
              style: const TextStyle(
                fontSize: 30.0,
              ),

            ),

          ],
        ),
      ) ,
    );
  }
}
