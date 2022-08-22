
import 'package:eisar_app/login_student.dart';
import 'package:eisar_app/signup_company.dart';
import 'package:eisar_app/signup_trainee.dart';
import 'package:flutter/material.dart';
import 'addplan.dart';
import 'homepage_student.dart';

class SignupStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("إنشاء الحساب"),
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
          _header(context),
           graduate(),
          _inputFields(context),
          _loginInfo(context),

        ]),
      ),
        ],
      ),
      
    ),
        ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text("إنشاء الحساب",
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
              hintText: "الإسم الاول",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.person),
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
              hintText: "الإسم الاخير",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.person),
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
              hintText: "البريد الإلكتروني",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.email_outlined),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
        ),
         SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"كلمة المرور",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.password),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"تاكيد كلمة المرور",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.password),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "رقم الجوال",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.phone_android),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          obscureText: true,
        ),
        SizedBox(height: 20),
        Text("الجنس"),
        gender(),
        SizedBox(
          height: 10,
        ),

//city and regin
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropDowncity(),

        SizedBox(
          height: 10,
        ),
        DropDownregin(),
        SizedBox(height: 20),
          ],
        ),
        //list uinv
    SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropDownList2(),
        SizedBox(
          height: 10,
        ),
        DropDownList(),
        SizedBox(height: 20),
          ],
        ),
         SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "التخصص",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.computer),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          obscureText: true,
        ),
         SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"الرقم الجامعي",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.numbers),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          obscureText: true,
        ),
          SizedBox(
          height: 10,
        ),
        DropDownList3(),
      
//eduction and GBA dropdownlist
          SizedBox(
          height: 10,
        ),
        DropDownGBA(),
        //text
SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"المعدل",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.numbers_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          obscureText: true,
        ),
        //dropdownlevel
          SizedBox(
          height: 10,
        ),
        DropDowneducationallevel(),
        //date
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"سنة التخرج",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.date_range),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          obscureText: true,
        ),


SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"تحميل السجل الاكاديميي",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.folder),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
        ),

    SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"تحميل السيرة الذاتية",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.folder),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
        ),

//button
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepageStudent()),
            );
          },
          child: Text(
            "إنشاء حساب",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 5),
              primary: Color.fromRGBO(253, 79, 66, 100),
              onPrimary: Colors.blue),
        )
      ],
    );
  }

  _loginInfo(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("سجّل الآن"),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            child: Text("هل لديك حساب؟"))
      ],
    );
  }
}

class DropDownList extends StatefulWidget {
  @override
  _DropDownListState createState() => _DropDownListState();
}



class _DropDownListState extends State<DropDownList> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'جامعة أم القرى';
    return Container(
      alignment: Alignment.centerRight,
      child: DropdownButton<String>(
        alignment: Alignment.center,
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['جامعة أم القرى', 'جامعة طيبة','جامعة الملك عبدالعزيز','جامعة الملك سعود']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          alignment: Alignment.center,
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
    );
  }
}
class DropDownList3 extends StatefulWidget {
  @override
  _DropDownListState3 createState() => _DropDownListState3();
}
class _DropDownListState3 extends State<DropDownList3> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'فترة التدريب';
    return Container(
      alignment: Alignment.centerRight,
      child: DropdownButton<String>(
        alignment: Alignment.center,
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['الفصل الصيفي','الفصل الثالث ', 'الفصل الثاني', 'الفصل الأول ','فترة التدريب']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          alignment: Alignment.center,
          value: value,
          child: Text(value, textDirection: TextDirection.rtl,),
        );
      }).toList(),
    )
    );
  }
}












class graduate extends StatefulWidget {
  const graduate({Key? key}) : super(key: key);

  @override
  State<graduate> createState() => _graduate();
}

class _graduate extends State<graduate> {
  String graduate = "طالب";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text("طالب"),
          value:"طالب",
          groupValue: graduate,
          onChanged: (value) {
            setState(() {
              graduate = value.toString();
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SignupStudent()),
            );

            });
          },
        ),
        RadioListTile(
          title: Text("خريج"),
          value:"خريج",
          groupValue: graduate,
          onChanged: (value) {
            setState(() {
              graduate = value.toString();
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signuptrainee()),
            );
            });
          },
        ),
      ],
    );
  }}

  class gender extends StatefulWidget {
  const gender({Key? key}) : super(key: key);

  @override
  State<gender> createState() => _gender();
}

class _gender extends State<gender> {
  String gender = "أنثى";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text("ذكر"),
          value: "ذكر",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text("أنثى"),
          value: "أنثى",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value.toString();
            });
          },
        ),
      ],
    );
  }
}
//here city and regin
class DropDowncity extends StatefulWidget {
  @override
  _DropDowncityState createState() => _DropDowncityState();
}
class _DropDowncityState extends State<DropDowncity> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'مكة المكرمة';
    return Container(
      alignment: Alignment.centerRight,
      child: DropdownButton<String>(
        alignment: Alignment.center,
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['مكة المكرمة', 'الرياض', 'المدينة المنورة', 'تبوك']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropDownregin extends StatefulWidget {
  @override
  _DropDownreginState createState() => _DropDownreginState();
}
class _DropDownreginState extends State<DropDownregin> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'رابغ';
    return Container(
        alignment: Alignment.centerRight,
        child: DropdownButton<String>(
          alignment: Alignment.center,
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['مكة المكرمة', 'رابغ', 'الدرعية', 'الرياض']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              alignment: Alignment.center,
              value: value,
              child: Text(
                value,
                textDirection: TextDirection.rtl,
              ),
            );
          }).toList(),
        ));
  }
}


class DropDownGBA extends StatefulWidget {
  @override
  _DropDownGBAState createState() => _DropDownGBAState();
}
class _DropDownGBAState extends State<DropDownGBA> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'نوع المعدل';
    return Container(
        alignment: Alignment.centerRight,
        child: DropdownButton<String>(
          alignment: Alignment.center,
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['نوع المعدل','4', '5',]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              alignment: Alignment.center,
              value: value,
              child: Text(
                value,
                textDirection: TextDirection.rtl,
              ),
            );
          }).toList(),
        ));
  }
}



class DropDowneducationallevel extends StatefulWidget {
  @override
  _DropDowneducationallevelState createState() => _DropDowneducationallevelState();
}
class _DropDowneducationallevelState extends State<DropDowneducationallevel> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'الدرجة العلمية';
    return Container(
        alignment: Alignment.centerRight,
        child: DropdownButton<String>(
          alignment: Alignment.center,
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['الدرجة العلمية','بكالوريس','دبلوم','طالب']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              alignment: Alignment.center,
              value: value,
              child: Text(
                value,
                textDirection: TextDirection.rtl,
              ),
            );
          }).toList(),
        ));
  }
}
///////////////////////////////
///

