import 'package:currencyconverterapp/DollarToEuro.dart';
import 'package:currencyconverterapp/EuroToDollar.dart';
import 'package:currencyconverterapp/currency.dart';
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
    return const MaterialApp(
      home: CurrencyConverter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton.icon(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const currency()));
                },
              icon: const Icon(Icons.currency_exchange),
                label: const Text("Click To See  Currencies"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(30),
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),

            const SizedBox(
              height: 50,
            ),

            const Text(
              "Please choose the case of convert:",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DollarToLbp()));
              },
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
              child: const Text('Dollar To LBP', style: TextStyle(fontSize: 18.0)),
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LbpToDollar()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
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
              child: const Text('LBP To Dollar', style: TextStyle(fontSize: 18.0)),
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DollarToEuro()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
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
              child: const Text("Dollar To Euro", style: TextStyle(fontSize: 18.0)),
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const EuroToDollar()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.all(20.0),
                elevation: 50,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text("Euro To Dollar", style: TextStyle(fontSize: 18.0)),
            ),



          ],
        ),
      ),
    );
  }
}
