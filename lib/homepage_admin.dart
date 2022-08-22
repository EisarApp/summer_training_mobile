import 'package:eisar_app/Homepage.dart';
import 'package:eisar_app/addplan.dart';
import 'package:eisar_app/eisar.dart';
import 'package:eisar_app/planspageheader.dart';
import 'package:eisar_app/viewplan.dart';
import 'package:flutter/material.dart';

class homepageAdmin extends StatelessWidget {
  const homepageAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(217, 217, 217, 5),
        appBar: AppBar(
          title: Text("الصفحة الرئيسية للجهات"),
          backgroundColor: Color.fromRGBO(15, 4, 124, 1),
        ),
       drawer: Drawer(
          child: ListView(
            children: [
              Image.asset('image/eisar.jpeg'),
              ListTile(
                title: const Text('الصفحة الرئيسية'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('خطة التدريب'),
                onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>AddPlan()),
            );
                },
              ),
              ListTile(
                title: const Text('عرض الخطط التدريبة '),
                onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>MainFoodPage()),
            );
                },
              ),
              ListTile(
                title: const Text('الشهادات'),
                onTap: () {
              
                },
              ),
              ListTile(
                title: const Text('المتدربين'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('مجتمع إيسار'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('هيكلة المنشأة'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('الموظفين'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('الاعلانات'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('تسجيل خروج'),
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
                          height: 250,
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
                              Image.asset(
                                'image/cv.jpeg',
                              ),
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
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 110),
                      child: Center(
                          child: Text("طلبات التقديم",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Tajawal',
                                  color: Color.fromRGBO(15, 4, 124, 1)))),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 160, right: 60),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "تدريب صيفي",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 160, right: 10),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "تدريب تعاوني",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                                  Radius.circular(10))),
                                      primary: Colors.redAccent,
                                      onPrimary: Colors.blue)),
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
                        height: 250,
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
                            Image.asset(
                              'image/task.jpeg',
                            ),
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
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 90),
                    child: Center(
                        child: Text("المهام",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Tajawal',
                                color: Color.fromRGBO(15, 4, 124, 1)))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 130, right: 60),
                        child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "إضافة مهام",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  primary: Colors.redAccent,
                                  onPrimary: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 130, right: 10),
                        child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Container(
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "عرض مهام المتدربين",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    primary: Colors.redAccent,
                                    onPrimary: Colors.blue)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 190, right: 10),
                    child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Container(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "عرض مهام المنسقين",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                primary: Colors.redAccent,
                                onPrimary: Colors.blue)),
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Card(
                    child: Container(
                      height: 250,
                      padding: EdgeInsets.only(bottom: 100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('image/report.jpeg'),
                          SizedBox(width: 70),
                          Image.asset('image/contact.jpeg'),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 90, right: 90),
                        child: Align(
                          alignment:
                              AlignmentDirectional.center, // <-- SEE HERE
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("التقارير",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Tajawal',
                                color: Color.fromRGBO(15, 4, 124, 1))),
                        SizedBox(width: 70),
                        Text("التواصل",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Tajawal',
                                color: Color.fromRGBO(15, 4, 124, 1)))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
