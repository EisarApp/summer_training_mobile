// ignore_for_file: depend_on_referenced_packages
import 'package:eisar_app/viewplan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eisar_app/widget/icons_and_text.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'addplan.dart';
class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}
class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 300;
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: Color.fromARGB(70, 23, 18, 87),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height:10,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Container(
                width: 120,
                child: Row(
                  children: [
                    Column(children: [
                      Text("الخطط التدريبة"),
                      Text("نوع التدريب"),
                      Row(children: [
                        Icon(Icons.arrow_drop_down_rounded, color:Color.fromARGB(255, 0, 0, 0)),
                        SizedBox(
                         width: 20,
                        ),
                        Text("الكل"),
                      ],),                      
                    ],
                  ),
                  ],
                ))),
                //list container
                Container(
                  padding: EdgeInsets.only(left:10,right:10),
                  height: 900,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                    return Container(
                      width:70,
                      child: Row(
                      children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        image: DecorationImage(
                          image:AssetImage(
                            "image/me.jpg"
                            ),
                        )
                      ),
                      ),  
                      // text container
                       SizedBox(
                       width: 5,
                      ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.zero,
                      color: Color.fromARGB(70, 23, 18, 87),
                    ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                           ),
                          Text(" برمجة تطبيقات الجوال باستخدامFLUTTER"),
                    Row(
                      children: [
                        IconsAndText(
                          text: "تعديل",
                          icon: Icons.drive_file_rename_outline_rounded,
                          iconColor: Color.fromARGB(82, 23, 18, 87),
                        ),
                        IconsAndText(
                          text: "جدولة",
                          icon: Icons.edit_calendar,
                          iconColor: Color.fromARGB(82, 23, 18, 87),
                        ),
                        IconsAndText(
                          text: "نشر",
                          icon: Icons.publish_rounded,
                          iconColor: Color.fromARGB(82, 23, 18, 87),
                        ), 
                      ],
                    )
                        ]),
                  ),
                ),
                  ],
                  ),
              );
            })
                ),      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - currScale) / 2, 1);
    }

    return Transform(
      transform: matrix,

      child: Stack(
        children: [
          
          Container(
            height: 300,
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(235, 157, 155, 154),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                color: index.isEven
                    ? Color.fromARGB(236, 236, 93, 73)
                    : Color.fromARGB(235, 23, 18, 87),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage( "image/me.jpg"))),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 130,
              margin: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: index.isEven
                    ? Color.fromARGB(200, 255, 255, 255)
                    : Color.fromARGB(200, 255, 255, 255),
              ),

              child: Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("FLUTTER برمجة تطبيقات الجوال باستخدام برنامج"),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(Icons.noise_control_off_sharp,
                                  color: Color.fromARGB(70, 23, 18, 87),
                                  size: 20)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("مكتملة"),
                        SizedBox(
                          width: 86,
                        ),
                        Text("متدرب"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("25"),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                      TextButton.icon(     // <-- TextButton
                       onPressed: () {
                        Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) =>ViewPlan()),
                       );
                       },
                       label: Text('تعديل',style: TextStyle(color:Colors.black),),
                       icon: Icon(
                       Icons.drive_file_rename_outline_rounded, color:Color.fromARGB(70, 23, 18, 87),
                      size: 16,
                      ),
                       ),
                       TextButton.icon(     // <-- TextButton
                       onPressed: () {
                        Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) =>ViewPlan()),
                       );
                       },
                       label: Text('جدولة',style: TextStyle(color:Colors.black),),
                       icon: Icon(
                       Icons.edit_calendar, color:Color.fromARGB(70, 23, 18, 87),
                      size: 16,
                      ),
                       ),
                       TextButton.icon(     // <-- TextButton
                       onPressed: () {
                        Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) =>ViewPlan()),
                       );
                       },
                       label: Text('عرض',style: TextStyle(color:Colors.black),),
                       icon: Icon(
                       Icons.display_settings, color:Color.fromARGB(70, 23, 18, 87),
                      size: 16,
                      ),
                       ),
                       TextButton.icon(     // <-- TextButton
                       onPressed: () {
                        Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) =>ViewPlan()),
                       );
                       },
                       label: Text('حذف',style: TextStyle(color:Colors.black),),
                       icon: Icon(
                       Icons.delete_rounded, color:Color.fromARGB(70, 23, 18, 87),
                      size: 16,
                      ),
                       ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
