import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor, double size) {
    return Container(
      width: size,
      height: size,
      margin: EdgeInsets.all(2), // Mengatur margin untuk spasi
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: size * 0.3, // Mengatur ukuran font proporsional
            color: txtcolor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: btncolor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(5), // Padding keseluruhan untuk spasi di sekitar
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Tampilan hasil
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(0.5),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 100),
                  ),
                ),
              ],
            ),
            // Spasi tambahan untuk mengangkat baris tombol
            SizedBox(height: 1), // Spasi atas
            // Baris tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('AC', Colors.grey, Colors.black, 80),
                calcbutton('+/-', Colors.grey, Colors.black, 80),
                calcbutton('%', Colors.grey, Colors.black, 80),
                calcbutton('/', Colors.amber[700]!, Colors.white, 80),
              ],
            ),
            SizedBox(height: 1), // Spasi antara baris tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('7', Colors.grey[850]!, Colors.white, 80),
                calcbutton('8', Colors.grey[850]!, Colors.white, 80),
                calcbutton('9', Colors.grey[850]!, Colors.white, 80),
                calcbutton('X', Colors.amber[700]!, Colors.white, 80),
              ],
            ),
            SizedBox(height: 1), // Spasi antara baris tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('4', Colors.grey[850]!, Colors.white, 80),
                calcbutton('5', Colors.grey[850]!, Colors.white, 80),
                calcbutton('6', Colors.grey[850]!, Colors.white, 80),
                calcbutton('-', Colors.amber[700]!, Colors.white, 80),
              ],
            ),
            SizedBox(height: 1), // Spasi antara baris tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('1', Colors.grey[850]!, Colors.white, 80),
                calcbutton('2', Colors.grey[850]!, Colors.white, 80),
                calcbutton('3', Colors.grey[850]!, Colors.white, 80),
                calcbutton('+', Colors.amber[700]!, Colors.white, 80),
              ],
            ),
            SizedBox(height: 1), // Spasi antara baris tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180, // Lebar tombol lonjong
                  height: 80,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(40), // Menjadikan lonjong
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: Colors.grey[850],
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                ),
                calcbutton('.', Colors.grey[850]!, Colors.white, 80),
                calcbutton('=', Colors.amber[700]!, Colors.white, 80),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
