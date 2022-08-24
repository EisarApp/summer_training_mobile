import 'package:eisar_app/homepage_student.dart';
import 'package:flutter/material.dart';
import 'Controllers/databasehelper.dart';
import 'homepage_university.dart';
import 'Radio_university.dart';

class SignUpScreen extends StatefulWidget {
 const SignUpScreen({Key? key , required this.title}) : super(key : key);
  final String title;

  @override
  State<SignUpScreen>  createState() =>SignUpScreenstate();
}

class SignUpScreenstate extends State<SignUpScreen> {

  DatabaseHelper databaseHelper = DatabaseHelper();
  String msgStatus = '';

  final TextEditingController _fristnameController = new TextEditingController();
  final TextEditingController _lastController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _numberController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _repasswordController = new TextEditingController();
  
  get dropdownValue => null;
  
  get dropdownValue1 => null;
  
  get gender1 => null;

  /*final TextEditingController _genderController = new TextEditingController();
  final TextEditingController _unviersityController = new TextEditingController();
  final TextEditingController _SpecializationController = new TextEditingController();*/



  _onPressed(){
    setState(() {
      if(_fristnameController.text.trim().toLowerCase().isNotEmpty &&
          _lastController.text.trim().isNotEmpty  &&
          _emailController.text.trim().isNotEmpty  &&
          _passwordController.text.trim().isNotEmpty  &&
          _numberController .text.trim().isNotEmpty  &&
         _passwordController.text.trim().isNotEmpty  &&
         _repasswordController.text.trim().isNotEmpty         
          ){
  databaseHelper.registerData(_fristnameController.text.trim(),_lastController.text.trim(),_emailController.text.trim().toLowerCase(),_numberController.text.trim(),
 _passwordController.text.trim(), _repasswordController.text.trim(),gender1.toString().trim(), dropdownValue.toString().trim(), dropdownValue1.toString().trim(),"Acadamic").whenComplete((){
          if(databaseHelper.status){
            ///_showDialog();
            msgStatus = 'Check email or password';
            print(msgStatus);
          }else{
           // Navigator.pushReplacementNamed(context, '/dashboard');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => homepageUniversity()),
               );

          }
        });
      }
    });
  }  

//}

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
           controller: _fristnameController,
           keyboardType: TextInputType.text,
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
          controller: _lastController,
          keyboardType: TextInputType.text,
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
          controller: _emailController ,
          keyboardType: TextInputType.emailAddress,
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
          controller: _numberController ,
          keyboardType: TextInputType.text,
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
          controller: _passwordController ,
          keyboardType: TextInputType.text,
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
          controller: _repasswordController ,
          keyboardType: TextInputType.text,
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
        gender(

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
          onPressed: () 
             {
             _onPressed();
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
class gender extends StatefulWidget {
  const gender({Key? key}) : super(key: key);

  @override
  State<gender> createState() => _gender();
}

class _gender extends State<gender> {
  String gender1 = "أنثى";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text("ذكر"),
          value: "ذكر",
          groupValue: gender1,
          onChanged: (value) {
            setState(() {
              gender1 = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text("أنثى"),
          value: "أنثى",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender1 = value.toString();
            });
          },
        ),
      ],
    );
  }
}



