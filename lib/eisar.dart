import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Radio_trainee.dart';

class Eisar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('image/eisar.jpeg'),
            SizedBox(height: 15),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => homepage2()),
                  );
                },
                child: Text("إضغط هنا",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Tajawal',
                    fontSize: 16, color: Colors.grey))),
          ],
        )));
  }
}
