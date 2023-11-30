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
        title:const Text("Euro To Dollar Converter"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
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
                labelStyle: const TextStyle(color: Colors.blue, fontSize: 15),
                suffix: const Icon(Icons.euro),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            ElevatedButton(
                onPressed: (){
                  setState(() {
                    dollar=double.parse(EuroController.text) * 1.2;
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

            Text(
              "Dollar: "+dollar.toString()+ "\$",
              style:const TextStyle(
                fontSize: 30.0
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
