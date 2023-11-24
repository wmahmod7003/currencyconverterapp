import 'package:currencyconverterapp/DollarToEuro.dart';
import 'package:currencyconverterapp/EuroToDollar.dart';
import 'package:currencyconverterapp/dollar_to_lbp.dart';
import 'package:currencyconverterapp/lbp_to_dollar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: CurrencyConverter(),
        debugShowCheckedModeBanner: false,
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text("Currency Converter"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>DollarToLbp())
                  );
                },
                child: Text('Dollar To LBP', style: TextStyle(fontSize: 18.0))
            ),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>LbpToDollar())
                  );
                },
                child: Text('LBP To Dollar', style: TextStyle(fontSize: 18.0))),

            SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>DollarToEuro())
                  );
                },
                child: Text("Dollar To Euro", style: TextStyle(fontSize: 18.0)),),

            SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>EuroToDollar())
                  );
                },
                child: Text("Euro To Dollar", style: TextStyle(fontSize: 18.0)),
            ),
          ],
        ),
      ),
    );
  }
}




