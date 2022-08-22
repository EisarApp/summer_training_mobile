import 'package:eisar_app/planspageheader.dart';
import 'package:flutter/material.dart';
import 'addplan.dart';
import 'components/appIcons.dart';
import 'components/extandText.dart';
import 'eisar.dart';

class ViewPlan extends  StatelessWidget {
  const ViewPlan({Key? key}) : super(key: key);

@override
Widget build(BuildContext context){
return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("تفاصيل الخطة"),
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
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 290,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "image/logo.jpg"
                    ))
                ),
               )
               ),
            Positioned(
             top: 35,
             left: 20,
             right: 20,
             child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               GestureDetector(
                 child:
                  AppIcon(icon: Icons.arrow_back_ios),
                  onTap:(){  
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => AddPlan()),
            );    
                 },
                  ),
                AppIcon(icon: Icons.favorite_border_outlined),
              ],
            )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 270,
              child: Container(
                padding: EdgeInsets.only(left: 30,right:30,top: 30 ),
                decoration: BoxDecoration(borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24) , 
                  topLeft: Radius.circular(24)),
                color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                     Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    Text("اسم الشركة", 
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize:24, fontWeight: FontWeight.bold , color: Colors.black)),
                    SizedBox(height:20),
                    Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      const Text("نوع التدريب", 
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize:16, fontWeight: FontWeight.normal , color: Colors.black38)),
                    ]),
                    SizedBox(height:20),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      const Text("هنا كمان تفاصيل ", 
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize:16, fontWeight: FontWeight.bold , color: Colors.black38)),
                    ]),
                  ]),
                  //the start of the plan descreption part
                  SizedBox(height:30),
                   Text("وصف التدريب", 
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(fontSize:18, fontWeight: FontWeight.bold , color: Colors.black)),
                     SizedBox(height:20),
                     Expanded(child:
                    SingleChildScrollView(child: ExandText(text:"-- زي هذا النص احتمال هنا ممكن بيظر وصف التدريب اذا كان النص طويل بيظهر زر -عرض المزيدiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii -"),
                ))]),
                  
                )),
            ]),
           bottomNavigationBar: Container(
             height: 100,
             padding: EdgeInsets.only(top:20,bottom:20, left: 20,right:20),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40) , 
                  topLeft: Radius.circular(40)),
               color: Colors.grey[200] ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[
                   Container(
                     child: Row(
                         children: const [Text("نشر في مجتمع إيسار",
                         style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold))]),
                                              
                     padding: EdgeInsets.only(top:20,bottom:20, left: 20,right:20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.white),
                     ),
                   
             GestureDetector( 
                   child: Container(
                     child: Row(
                         children: [ Text("طلب تسجيل في التدريب",
                         style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold,color:Colors.white))]),                       
                     padding: EdgeInsets.only(top:20,bottom:20, left: 20,right:20),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Color(0xFFff775c)),
                   ),
                   onTap: () => showAboutDialog(context: context),
                   )          
   ]),
),
                                    
                                    
));
                         
}                       
}

                         
                         