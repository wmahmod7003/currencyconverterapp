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
        title: const Text('Dollar To LBP Converter '),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller:DollarController ,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                  labelText: 'Enter Dollar need to convert',
                labelStyle: const TextStyle(color: Colors.blue, fontSize: 15),
                suffix: const Icon(Icons.currency_exchange),
              ),

            ),

            const SizedBox(height: 30.0,),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  lbp=double.parse(DollarController.text) * 89500;
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

            Text("Result : " +lbp.toString() +" LBP",
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
