import 'package:eisar_app/signup_studen.dart';
import 'package:eisar_app/signup_company.dart';
import 'package:flutter/material.dart';
import 'login_university.dart';
import 'login_company.dart';
import 'login_student.dart';
import 'signup_university.dart';
import 'signup_company.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: HomeBody(), //كلاس جديد للبودي
    );
  }

  AppBar homeAppBar() {
    //ميثود منفصلة
    return AppBar(
      backgroundColor: Color.fromRGBO(15, 4, 124, 1),
      elevation: 0,
      title: Text(
        'مرحبا بكم في ايسار',
      ),
      centerTitle: false,
    );
  }
}

class HomeBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 50),
        Card(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromRGBO(15, 4, 124, 150),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                            contentPadding: EdgeInsets.only(right: 10),
                            title: Text("المتدرب",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 32, fontFamily: 'Tajawal')),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupStudent()),
                                  );
                                },
                                child: Text(
                                  "إنشاء حساب",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(15, 4, 124, 1),
                                    onPrimary: Colors.blue),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginStudent()),
                                  );
                                },
                                child: Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: Color.fromRGBO(15, 4, 124, 1)),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.blue),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          elevation: 8,
          margin: EdgeInsets.all(10),
        ),
        SizedBox(height: 10),
        Card(
          child: Container(
            height: 150,
            color: Color.fromRGBO(196, 196, 196, 0.4),
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                            contentPadding: EdgeInsets.only(right: 10),
                            title: Text("جهات التدريب",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 32, fontFamily: 'Tajawal')),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpCompany()),
                                  );
                                },
                                child: Text(
                                  "إنشاء حساب",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(15, 4, 124, 1),
                                    onPrimary: Colors.blue),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginCompany()),
                                  );
                                },
                                child: Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: Color.fromRGBO(15, 4, 124, 1)),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.blue),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          elevation: 8,
          margin: EdgeInsets.all(10),
        ),
        SizedBox(height: 10),
        Card(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 102, 99, 150),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
            ),
            height: 150,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ListTile(
                            contentPadding: EdgeInsets.only(right: 10),
                            title: Text("الجامعات",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 32, fontFamily: 'Tajawal')),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen(title:'')),
                                  );
                                },
                                child: Text(
                                  "إنشاء حساب",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(15, 4, 124, 1),
                                    onPrimary: Colors.blue),
                              ),
                               ElevatedButton(
                                onPressed: () {
                                   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginUniversity()),
                                  );
                                },
                                child: Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Tajawal',
                                      color: Color.fromRGBO(15, 4, 124, 1)),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.blue),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 8,
                ),
              ],
            ),
          ),
          elevation: 8,
          margin: EdgeInsets.all(10),
        ),
      ],
    ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
