import 'dart:convert';
import 'package:flutter_application_6/auth/models/login_request_model.dart';
import 'package:flutter_application_6/auth/models/login_response_model.dart';
import 'package:flutter_application_6/auth/services/shared_service.dart';
import 'package:flutter_application_6/register/models/register_request_model.dart';

import 'package:flutter_application_6/auth/config.dart';
import 'package:flutter_application_6/register/models/register_response_model.dart';
import'package:http/http.dart' as http;


class APIService{
  static var client=http.Client();

  static Future<bool> login(LoginRequestModel model)async{

    Map<String, String>requestHeaders={
      'content-Type':'application/Json',
    };
    var url=Uri.http(Config.apiURL,Config.loginAPI);

    var response=await client.post(url,
    headers: requestHeaders,
    body: jsonEncode(model.toJson()),);

    if (response.statusCode==200){
      //sahred
      await SharedService.setLoginDetails(loginResponseJson(response.body));
      return true;
    }else{
      return false;
    }
  }


  static Future<RegisterResponseModel> register(RegisterRequestModel model)async{

    Map<String, String>requestHeaders={
      'content-Type':'application/Json',
    };
    var url=Uri.http(Config.apiURL,Config.loginAPI);

    var response=await client.post(url,
    headers: requestHeaders,
    body: jsonEncode(model.toJson()),);

    return registerResponseModel(response.body);


  }







}