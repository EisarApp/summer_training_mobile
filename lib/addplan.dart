
import 'package:eisar_app/planspageheader.dart';
import 'package:eisar_app/viewplan.dart';
import 'package:flutter/material.dart';
import 'eisar.dart';
import  'models/user.dart';

class AddPlan extends  StatefulWidget {
  const AddPlan({Key? key}) : super(key: key);

  @override
  State<AddPlan> createState() => _AddPlanPage();
}

class _AddPlanPage extends State<AddPlan>{
bool isCheckedS = false;
bool isCheckedC = false;

late int selectedRadio=0 ;
late int selectedRadio2=0 ;

final _formkey = GlobalKey<FormState>();
final _user =User();
var dropdownValue;

final List<String> employee = [
   'ربى'  ,
   'سالم' ,
   'سارا',];

DateTime _dateTime = DateTime(2020,7,14);

DateTimeRange dateRange=DateTimeRange(
  start:DateTime(2022,11,5),end:DateTime(2022,12,24));

int _count=0;
void _incrementCount(){
  setState(() {
    _count++;
    
  });
}
void _decrementCount(){
  setState(() {
    _count--;
    
  });
}

@override
Widget build(BuildContext context){
     return SafeArea(
     child: Scaffold(
       appBar: AppBar(
          title: const Text("إضافة خطة تدريبية"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(15, 4, 124, 1),
          elevation: 0,
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView( 
           padding: const EdgeInsets.all(24),
           child: Builder(
             builder: (context)=> Form(
             key:_formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               _header(context),
               _radioButton(context),
               _inputFields(context),
               _menu(context),
               _counter(context),
               _radioButton2(context),
               _datePicker(context),
               _inputText(context),
               _addButton(context)
          ]),
      ),
         ) )
)); 
}
_header(context){
return Column(
       children: [
         const SizedBox(
              height: 1,
            ),
            Padding(
              padding:const  EdgeInsets.only(left:30 ,right: 30,top: 5)),
        const  Text("إضافة خطة تدريبية", style: TextStyle(
           fontSize:25, 
           fontWeight: FontWeight.bold ,
           color: Colors.black)),
          const SizedBox(
              height: 20,
            ),
       ],
);
}
_inputFields(context){
  return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          textAlign: TextAlign.center,
          validator: (value){
            if(value!.isEmpty){
              return 'ادخل اسم الخطة';
            }
            return null;},
          decoration: InputDecoration(
            label:Row(
            mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon( Icons.insert_chart_outlined,
           color: Colors.indigo.shade900,),
                   SizedBox(
                     width: 15,
                         ),
           const Text( 'اسم الخطة',
                 textAlign: TextAlign.right,
                     ),
                     
                     ]
                     ),
            labelStyle: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
             ),
             alignLabelWithHint: true,
            fillColor: Colors.grey[300],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none )),
              onSaved: (val) => setState(() => _user.planName=val!),
              ),
        const SizedBox(
          height: 20,),
          TextFormField(
           validator: (value){
            if(value!.isEmpty){
              return 'ادخل القسم المسؤول';
            }return null;
          },
          decoration: InputDecoration(
            label:Row(
            mainAxisAlignment: MainAxisAlignment.start,
         children: [
           
                     Icon( Icons.manage_accounts_outlined,
                      color: Colors.indigo.shade900,
                     ),
                     const SizedBox(
                     width: 15,
                         ),
           const Text( 'القسم المسؤول',
                 textAlign: TextAlign.right,
                     ),
                     
                     ]
                     ),
            labelStyle: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
             ),
             alignLabelWithHint: true,
             fillColor: Colors.grey[300],
             filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none )),
               onSaved: (val) => setState(() => _user.planDepart=val!),
        ),
       const SizedBox(
          height: 20,),
          TextFormField(
            validator: (value){
            if(value!.isEmpty){
              return 'ادخل مسار التدريب';
            }return null;
          },
          decoration: InputDecoration(
          label:Row(
            mainAxisAlignment: MainAxisAlignment.start,
         children: [ 
                     Icon( Icons.table_chart_outlined,
                      color: Colors.indigo.shade900,
                     ),
                      const SizedBox(
                     width: 15,
                         ),
          const Text( 'مسار التدريب',
                 textAlign: TextAlign.right,
                     ),
                    ]),
            labelStyle: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
             ),
             fillColor: Colors.grey[300],
             filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none )),
               onSaved: (val) => setState(() => _user.planTrack=val!),
        ),
       const  SizedBox(
          height: 20),
        TextFormField(
           validator: (value){
            if(value!.isEmpty){
              return 'ادخل منشئ الخطة';
            }return null;
          },
          decoration: InputDecoration(
          label:Row(
            mainAxisAlignment: MainAxisAlignment.start,
         children: [ 
         
                     Icon( Icons.person_add_alt_1_outlined,
                      color: Colors.indigo.shade900,
                     ),
                       SizedBox(
                     width: 15,
                         ),
          const Text( 'منشئ الخطة',
                 textAlign: TextAlign.right,
                     ),
                     ]),
            labelStyle: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
             ),
             fillColor: Colors.grey[300],
             filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none )),
               onSaved: (val) => setState(() => _user.planCreator=val!),
     ), 
        const SizedBox(
          height: 20)
      ]);
}    
_radioButton(context){
   return Row(
     children: [
      const Text("نوع التدريب", 
      style: TextStyle(fontSize:20, fontWeight: FontWeight.bold ,color: Colors.black)),
      Expanded(child: RadioListTile<int>(
         contentPadding: const EdgeInsets.all(0.0),
          value: 1, 
          groupValue: selectedRadio,
          title: const Text("صيفي"), 
          onChanged: (val){
            setState(() {
             selectedRadio = val!;});
          },
          activeColor: Colors.indigo.shade900,
      )),
      Expanded(child:
       RadioListTile<int>(
          contentPadding: const EdgeInsets.all(0.0),
          value: 2, 
          groupValue: selectedRadio, 
          title: const Text("تعاوني"),
          onChanged: (val){
            setState(() {
             selectedRadio = val!;});
          },
          
          activeColor: Colors.indigo.shade900,
      ),
   ),]);
   }
_radioButton2(context){
   return Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
        SizedBox(height:15),
       const Text(" اختر آلية التدريب", 
      style: TextStyle(fontSize:20, fontWeight: FontWeight.bold ,color: Colors.black)),
       RadioListTile<int>(
         contentPadding: const EdgeInsets.all(0.0),
          value: 1, 
          groupValue: selectedRadio2,
          title: const Text("الكل",textDirection: TextDirection.rtl), 
          onChanged: (val){
            setState(() {
             selectedRadio2 = val!;});
          },
          activeColor: Colors.indigo.shade900,
      ),
      
       RadioListTile<int>(
          contentPadding: const EdgeInsets.all(0.0),
          value: 2, 
          groupValue: selectedRadio2, 
          title: const Text("عن بعد",textAlign: TextAlign.right,),
          onChanged: (val){
            setState(() {
             selectedRadio2 = val!;});
          },
          
          activeColor: Colors.indigo.shade900,
      ),
    RadioListTile<int>(
         contentPadding: const EdgeInsets.all(0.0),
          value: 3, 
          groupValue: selectedRadio2,
          title: const Text("حضوري",textAlign: TextAlign.right,), 
          onChanged: (val){
            setState(() {
             selectedRadio2 = val!;});
          },
          activeColor: Colors.indigo.shade900,
      )]);
   }

 _datePicker(context) {
  final start = dateRange.start;
  final end   = dateRange.end;
        return Center(child:
        Column(
     mainAxisAlignment: MainAxisAlignment.start,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [ const Text("المدة الزمنية", 
      style: TextStyle(fontSize:20, fontWeight: FontWeight.bold ,color: Colors.black)),
       SizedBox(height:10),
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: 
               ElevatedButton(
                 onPressed:  pickDateRange,
                 style:
                  ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    primary: Colors.grey[300] // background
              ),
              child: Text('${end.day}/${end.month}/${end.year}',
                       style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo.shade900)),
                         
            )),
             const SizedBox(width:12),
            Expanded(child: 
              ElevatedButton(
               onPressed: pickDateRange,
               style:
                  ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    primary: Colors.grey[300] // background
              ),
               child: Text('${start.day}/${start.month}/${start.year}',
             style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo.shade900)),
                         ),
          ),
        ],
      ),
     ]));
 }
 
Future pickDateRange() async{
  DateTimeRange? newDateRange = await showDateRangePicker(
  context: context, 
  helpText: 'اختر الفترة الزمنية للخطة التدريبية', //title
  initialDateRange: dateRange, 
  firstDate: DateTime(1900), 
  lastDate: DateTime(2100));
  if(newDateRange == null)return;
  setState(() => dateRange=newDateRange);
  }

_counter(context){
  return Container(
            // padding: EdgeInsets.only(top:40,bottom:10, left: 10,right:10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(40),
                  ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[
                  SizedBox( width: 5 ),
                   Icon(Icons.group_add_outlined,color: Colors.indigo.shade900,),
                  SizedBox( width: 5),
                  const Text("عدد الطلاب", style: TextStyle(fontSize:18, fontWeight: FontWeight.normal , color: Colors.black)),
                  SizedBox( width: 5),
                   Container(
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:
                         [ FloatingActionButton(
                           child: Icon(Icons.add, color:Colors.indigo.shade900),
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                           backgroundColor: Colors.grey[300],
                           elevation: 0,
                           onPressed: _incrementCount),
                           SizedBox( width: 30 ),
                          Text('$_count' ,style: 
                          TextStyle(fontSize:18, fontWeight: FontWeight.bold , color: Colors.black)),
                          SizedBox( width: 30 ),
                          FloatingActionButton(
                           child: Icon(Icons.remove,color:Colors.indigo.shade900),
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                           backgroundColor: Colors.grey[300],
                           elevation: 0,
                           onPressed: _decrementCount),
                         ]),
                    padding: EdgeInsets.only(top:15,bottom:15, left:15,right:15),
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                       color: Colors.white),

),

]
)
);
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
     child: DropdownButton(
        dropdownColor: Colors.white,
        onChanged: (value){
         dropdownValue = value;
       setState(() {});
     },
     //value:'آلية التدريب'.toString(),
       items: employee.map((items) {
        return DropdownMenuItem(value:items,child: Text(items));
     }).toList(),
  ))),

 ]
 );
 }

 
_inputText(context){
  return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        TextFormField(
           minLines: 2,
           maxLines: 5,
          keyboardType: TextInputType.multiline,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            label:Row(
            mainAxisAlignment: MainAxisAlignment.start,
              children: const [ Text( 'وصف الخطة',
                 textAlign: TextAlign.right,
                     ),
                      SizedBox(
                     width: 15,
                         ),
                     ]),
            labelStyle: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
             ),
             alignLabelWithHint: true,
            fillColor: Colors.grey[300],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none )),
              onSaved: (val) => setState(() => _user.planName=val!),
              )]);
 }
_addButton(context){
return Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children:[ const SizedBox( height: 20 ),
        ElevatedButton(
          onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainFoodPage()),
            );
            final form = _formkey.currentState;
            if(form!.validate()){
              form.save();
              _user.save();
            }
          },
              style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 5),
              primary: Color.fromRGBO(253, 79, 66, 100),
              onPrimary: Colors.blue),
              
          child: const Text( "إضافة خطة",
                       style:
                        TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),

                       ),
             )]);
}
}


