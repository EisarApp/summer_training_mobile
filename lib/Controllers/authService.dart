import 'dart:convert';
import '/Services/globals.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static Future<http.Response> register(
  String fristname,
  String lastname,
  String email ,
  String number ,
  String password,
  String resetpassword,
  String gender ,
  String university,
  String department,
  String userType ) async {
    Map data = {
      
          "firstName":fristname,
          "lastName":lastname,
          "email":email,
          "mobile":number,
          "password":password,
          "confirmPassword":resetpassword,
          "gender":gender,
          "university":university,
          "department":department,
          "userType":userType,
         
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL);
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + 'auth/login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}