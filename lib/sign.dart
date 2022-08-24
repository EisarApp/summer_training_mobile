import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Controllers/authService.dart';
import '/Services/globals.dart';

//import '../rounded_button.dart';
//import 'home_screen.dart';
//import 'login_screen.dart';
import 'package:http/http.dart' as http;

import 'homepage_university.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 
  
  String _fristname = '';
  String _lastname = '';
  String _email = '';
  String _number = '';
  String _password = '';
  String _resetpassword = '';
  String _gender = '';
  String _university = 'UQU';
  String _department = 'CS';
  String _userType = '3';

  createAccountPressed() async { 
      http.Response response =
          await AuthServices.register(_fristname,_lastname, _email, _number , _password,_resetpassword,_gender,_university,
          _department,_userType);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const homepageUniversity(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
  }


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
    String gender1 = "أنثى";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        TextField(
         onChanged: (value) {
                _fristname = value;
              },
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
         onChanged: (value) {
                _lastname = value;
              },
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
         onChanged: (value) {
                _email = value;
              },
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
           onChanged: (value) {
                _number = value;
              },
          decoration: InputDecoration(
              hintText: "رقم الجوال",
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
           onChanged: (value) {
                _password = value;
              },
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
         onChanged: (value) {
                _resetpassword = value;
              },
          decoration: InputDecoration(
              hintText: "تاكيد كلمة المرور",
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
        Text("الجنس"),
      Column(
      children: [
        RadioListTile<String>(
          title: Text("ذكر"),
          value: "ذكر",
          groupValue: gender1,
          onChanged: (value) {
            setState(() {
              gender1 = value.toString();
                _gender = gender1;
            
            });
          },
        ),
        RadioListTile<String>(
          title: Text("أنثى"),
          value: "أنثى",
          groupValue: gender1,
          onChanged: (value) {
            setState(() {
              gender1 = value.toString();
              _gender = gender1;
            });
          },
        ),
      ],
    

        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropDownList2(

            ),
        SizedBox(
          height: 10,
        ),
        DropDownList(

        ),
        SizedBox(height: 20),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
        onPressed: () => createAccountPressed(),
        
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
_menu(context){
  return Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children:[
    const SizedBox( width: 10 ),
    Icon(Icons.person_outlined,color: Colors.indigo.shade900),
    const SizedBox( width: 10 ),
    const Text("منسق التدريب", style: TextStyle(fontSize:18, fontWeight: FontWeight.normal , color: Colors.black)),
    const SizedBox( width: 10 ),
    DropdownButtonHideUnderline(
    child:
    Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      alignment:Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius:BorderRadius.circular(18) ),
      padding: const EdgeInsets.symmetric(vertical:2, horizontal:50 ),
     //child: DropdownButton(
     //   dropdownColor: Colors.white,
      //  onChanged: (value){
         //dropdownValue = value;
       //setState(() {});
    // },
       // value:dropdownValue.toString(),
       //items: employee.map((items) {
     //   return DropdownMenuItem(value:items,child: Text(items));
    // }).toList(),
  //))),

  ))]);
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
    String? dropdownValue1 = 'جامعة أم القرى';
    return Container(
      alignment: Alignment.centerRight,
      child: DropdownButton<String>(
        alignment: Alignment.center,
      value: dropdownValue1,
      onChanged: (newValue) {
        setState(() {
          dropdownValue1 = newValue;
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

class _DropDownListState2 extends State<DropDownList2> {
  @override
  Widget build(BuildContext context) {
    String? dropdownValue = 'قسم علوم الحاسب';
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
      items: <String>['قسم علوم الحاسب', 'قسم ادارة الأعمال', 'قسم هندسة الحاسب', 'قسم نظم المعلومات']
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


