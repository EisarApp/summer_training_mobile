import 'package:flutter/material.dart';

class  ExandText extends  StatefulWidget {
  final String text;
  const ExandText({Key? key,required this.text }) : super(key: key);

  @override
  State<ExandText> createState() => _ExandState();
}

class _ExandState extends State<ExandText>{
 late String firstHalf;
 late String secondHalf;
 bool hiddenText= true;

 double textHight = 60;
 @override
 void initState(){
   super.initState();
   if(widget.text.length > textHight){
     firstHalf = widget.text.substring(0, textHight.toInt());
     secondHalf = widget.text.substring(textHight.toInt()+1, widget.text.length);
   }else {
     firstHalf=widget.text;
     secondHalf="";
   }

 }
@override
Widget build(BuildContext context){
  return Container(
    child: secondHalf.isEmpty ? Text(firstHalf, 
     style: TextStyle(fontSize:14, fontWeight:FontWeight.normal, color:Colors.black87)):Column(
       children: [
         Text(hiddenText?("$firstHalf..."):(firstHalf+secondHalf),
           style: const TextStyle(fontSize:14, fontWeight:FontWeight.normal, color:Colors.black87)),
       InkWell(
         onTap:() {
           setState(() {
             hiddenText=!hiddenText;
           });
         },
         child:Row(
           children:[
           Text("عرض المزيد", 
             style: TextStyle(fontSize:10, fontWeight:FontWeight.normal, color:Colors.deepOrange[300])),
             Icon(hiddenText?Icons.arrow_drop_down: Icons.arrow_drop_up ,color: Colors.deepOrange[300],),
         ]) ,
       )],
    ),
  );

 }
}