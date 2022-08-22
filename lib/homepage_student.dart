import 'package:flutter/material.dart';

import 'eisar.dart';

class homepageStudent extends StatelessWidget {
  const homepageStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor:Color.fromRGBO(217, 217, 217, 5),
        appBar: AppBar(
          title: Text("الصفحة الرئيسية للمتدرب"),
          backgroundColor: Color.fromRGBO(15, 4, 124, 1),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Image.asset('image/eisar.jpeg'),
              ListTile(
                title: const Text('الملف الشخصي'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('قائمة الفرص'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('طلبات التدريب'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
             
              ListTile(
                title: const Text('تسجيل الخروج'),
                 onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Eisar()),
            );
          },
              )
            ],
          ),
        ),
        body: Scrollbar(
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: <Widget>[
                    Card(
                      child: Container(
                          height: 300,
                          padding: EdgeInsets.only(bottom: 180),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('image/eisar.jpeg',
                                  height: 150, width: 150),
                              Text("إيسار لتقنية المعلومات"),
                            ],
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 90),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "تقنية",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 40),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "مكة المكرمة",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 190),
                      child: Center(
                          child: Text(
                              "نظام سحابي ذكي يتيح للجهات إدارة العملية\nالتدريبية للموظفين وأعضاء الفريق.",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Tajawal'))),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 80),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "المزيد",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 20),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "www.eisar.com",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                  children: <Widget>[
                    Card(
                      child: Container(
                          height: 300,
                          padding: EdgeInsets.only(bottom: 180),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('image/eisar.jpeg',
                                  height: 150, width: 150),
                              Text("إيسار لتقنية المعلومات"),
                            ],
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 90),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "تقنية",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 40),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "مكة المكرمة",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 190),
                      child: Center(
                          child: Text(
                              "نظام سحابي ذكي يتيح للجهات إدارة العملية\nالتدريبية للموظفين وأعضاء الفريق.",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Tajawal'))),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 80),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "المزيد",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 20),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "www.eisar.com",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
            Stack(
                  children: <Widget>[
                    Card(
                      child: Container(
                          height: 300,
                          padding: EdgeInsets.only(bottom: 180),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('image/eisar.jpeg',
                                  height: 150, width: 150),
                              Text("إيسار لتقنية المعلومات"),
                            ],
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 90),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "تقنية",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 40),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "مكة المكرمة",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 190),
                      child: Center(
                          child: Text(
                              "نظام سحابي ذكي يتيح للجهات إدارة العملية\nالتدريبية للموظفين وأعضاء الفريق.",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Tajawal'))),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 80),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "المزيد",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 20),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "www.eisar.com",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Card(
                      child: Container(
                          height: 300,
                          padding: EdgeInsets.only(bottom: 180),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('image/eisar.jpeg',
                                  height: 150, width: 150),
                              Text("إيسار لتقنية المعلومات"),
                            ],
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 90),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "تقنية",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 90, right: 40),
                          child: Align(
                            alignment:
                                AlignmentDirectional.center, // <-- SEE HERE
                            child: Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Center(
                                  child: Text(
                                    "مكة المكرمة",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Tajawal',
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 190),
                      child: Center(
                          child: Text(
                              "نظام سحابي ذكي يتيح للجهات إدارة العملية\nالتدريبية للموظفين وأعضاء الفريق.",
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Tajawal'))),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 80),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "المزيد",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 240, right: 20),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "www.eisar.com",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
            ],
          ),
        ));
  }
}
