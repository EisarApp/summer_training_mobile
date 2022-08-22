import 'package:eisar_app/addplan.dart';
import 'package:eisar_app/viewplan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'eisar.dart';
import 'planspagebody.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}
class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("عرض الخطط"),
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
        body: Column(
          children: [ 
            Container(
            child: Container(   
              margin: EdgeInsets.only(top:45, bottom:15),
              padding: EdgeInsets.only(left:20,right:20),
                child: Row(
                  
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                        Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 200,
                        height:45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:Color.fromARGB(61, 23, 18, 87),
                        ),
                        child: Icon(Icons.search, color:Colors.white),
                      ),
                    )
                      ],),
                       SizedBox(
                       width: 100,
                       ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector( 
                       child: Container(
                        width: 45,
                        height:45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:Color.fromARGB(61, 23, 18, 87),
                        ),
                        child: Icon(Icons.add, color:Colors.white),
                      ),
                       onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>AddPlan()),
            );
     }
     
                      ),
                    ) ,
                  
                  ]
                )
            )
        ),
            Expanded(child: SingleChildScrollView(child:FoodPageBody() ,))
          ],
        )
    );
  }
}
