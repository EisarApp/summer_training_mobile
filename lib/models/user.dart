import 'package:flutter/material.dart';

class User{
static const String TrainingPlanAll='الكل';
static const String TrainingPlanOnline='حضوري';
static const String TrainingPlanInPerson='عن بعد';

static const String SummerTraining='صيفي';
static const String CoopYrainingCoop='تعاوني';

String  planName='';
String  planCreator='';
String  planTrack='';
String  planDepart='';

Map<String,bool> trainingPlan = {
  TrainingPlanAll:false,
  TrainingPlanOnline:false,
  TrainingPlanInPerson:false,
};

Map<String,bool> trainingType = {
  SummerTraining:false,
  CoopYrainingCoop:false,
};

save(){
  print('saving form via WS');
}
}

