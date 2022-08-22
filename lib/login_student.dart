
import 'package:flutter/material.dart';
import 'homepage_student.dart';

class LoginStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("تسجيل دخول"),
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
              
          _header(context),
          _inputFields(context),
          _forgotPassword(context),
          _signup(context),
        ]),
      ),
        ],
      ),
      
    ),
        ),
    );
  }
}
  _header(context) {
    return Column(
      children: [
        Text("تسجيل دخول",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal'))
      ],
    );
  }
  _inputFields(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "البريد الالكتروني",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(
                    width: 2.0,
                    color: Colors.grey, // Color of the border
                  ))),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "كلمة المرور",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.password),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
        ),
    
         SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepageStudent()),
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

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: Text("نسيت كلمة المرور؟"));
  }

  _signup(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("ليس لديك حساب ؟"),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'Signup');
            },
            child: const Text(
                "إنشاء حساب")) //Navigator.pushNamed(context, 'Signup');
      ],
    );
  }
