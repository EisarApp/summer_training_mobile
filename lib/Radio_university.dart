
import 'package:eisar_app/Radio_trainee.dart';
import 'package:eisar_app/Radio_company.dart';
import 'package:eisar_app/signup_studen.dart';
import 'package:eisar_app/signup_university.dart';
import 'package:flutter/material.dart';
import 'homepage_student.dart';
import 'login_university.dart';

class homepage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("مرحبا بكم في إيسار"),
        backgroundColor: Color.fromRGBO(15, 4, 124, 1),
      ),
      backgroundColor: Colors.white,
      body: Scrollbar(
          isAlwaysShown: false,
          thickness: 20,
      child:ListView(
        children: [
        Container(   
        margin: EdgeInsets.all(24),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              SizedBox(
          height: 80,
        ),     
          _inputFields(context),
         
         
        ]),
      ),
        ],
      ),
      
    ),
        ),
    );
  }
}
  
  _inputFields(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       Text(
                                    "اختر نوع المستخدم",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
SizedBox(height:20),
 graduate(),
      SizedBox(height:65),
        ElevatedButton(
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpScreen()),
            );
          },
          child: Text(
            "أنشاء حساب",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 5),
              primary: Color.fromRGBO(253, 79, 66, 100),
              onPrimary: Colors.blue),
        ),
         SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>LoginUniversity()),
            );
          },
          child: Text(
            "تسجيل دخول",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 5),
              primary: Color.fromRGBO(253, 79, 66, 100),
              onPrimary: Colors.blue),
        ),
       ],
    );
  }

class graduate extends StatefulWidget {
  const graduate({Key? key}) : super(key: key);

  @override
  State<graduate> createState() => _graduate();
}

class _graduate extends State<graduate> {
  String graduate = "جهات التعليم";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text("المتدربين"),
          value:"المتدربين",
          groupValue: graduate,
          onChanged: (value) {
            setState(() {
              graduate = value.toString();
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepage2()),
            );
              
            });
          },
        ),
        RadioListTile(
          title: Text("جهات التعليم"),
          value:"جهات التعليم",
          groupValue: graduate,
          onChanged: (value) {
            setState(() {
              graduate = value.toString();
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepage3()),
            );

            });
          },
        ),
         RadioListTile(
          title: Text("جهات التدريب"),
          value:"جهات التدريب",
          groupValue: graduate,
          onChanged: (value) {
            setState(() {
              graduate = value.toString();
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepage4()),
            );
            });
          },
        ),
         
      ],
    );
  }}
 