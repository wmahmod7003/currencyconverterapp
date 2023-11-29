import 'package:flutter/material.dart';
class currency extends StatefulWidget {
  const currency({super.key});

  @override
  State<currency> createState() => _currencyState();
}

class _currencyState extends State<currency> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Currencies",
          style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
      child: Center(
          child: Column(
            children: [
              Text("______________________________",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Currencies vs Dollar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("______________________________",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),

              Text("Turkish Lira ---> 27.3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Chinese Yen ---> 6.783 CNY",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Lebanese Pound ---> 89600 L.L",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Eueo  ---> 0.919 €",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Canda Dollar ---> 1.333 \$",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>currency() )
                    );
                  },
                  label: Text("Click To Refresh"),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.all(30),
                  elevation: 50,
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                icon: Icon(Icons.currency_exchange,color: Colors.white),

              )
            ],
          ),
      ),
      ),
    );
  }
}
