import 'package:flutter/material.dart';

import 'homepage_admin.dart';

class SignUpCompany extends StatelessWidget {
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
        child: ListView(
          children: [
        Container(
        margin: EdgeInsets.all(24),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
         _header(context),
          _inputFields(context),
          _loginInfo(context),
        ]),
      ),
          ],
        ),
        ) ,
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
              hintText: "الاسم الاول",
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
              hintText: " الاسم الاخير ",
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
              hintText: "رقم الجوال",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.phone),
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
              hintText: "كلمة المرور",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.password_outlined),
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
              hintText: "تاكيد كلمة المرور",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.password_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              )),
          obscureText: true,
        ),
         Text("الجنس"),
        gender(),
        SizedBox(
          height: 10,
        ),
        
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropDownList(),
            SizedBox(
              height: 10,
            ),
            DropDownList2(),
            SizedBox(height: 20),
          ],
        ),
 SizedBox(
          height: 10,
        ),
Text("حجم المنشاة"),
        SizedBox(
          height: 10,
        ),
        slider(),
     SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              hintText:"تحميل شعار الشركة",
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
              hintText:"تحميل هيدر الشركة ",
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
              hintText:"الوصف",
              hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white,
              filled: true,
              suffixIcon: Icon(Icons.description),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepageAdmin()),
            );
          },
          child: Text(
            "انشاء حساب",
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

class DropDownList2 extends StatefulWidget {
  @override
  _DropDownListState2 createState() => _DropDownListState2();
}

class _DropDownListState extends State<DropDownList> {
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

class _DropDownListState2 extends State<DropDownList2> {
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

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _slider();
}

class _slider extends State<slider> {
  double rating = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: rating,
      max: 500,
      divisions: 5,
      onChanged: (double value) {
        setState(() {
          rating = value;
        }
        );
      },
      label: "$rating"
    );
  }
}
class gender extends StatefulWidget {
  const gender({Key? key}) : super(key: key);

  @override
  State<gender> createState() => _gender();
}

class _gender extends State<gender> {
  String gender ="ذكر";
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