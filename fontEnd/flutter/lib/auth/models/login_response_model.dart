import 'dart:convert';
LoginResponseModel loginResponseJson(String str)=>
  LoginResponseModel.fromJson(json.decode(str));





class LoginResponseModel {
  LoginResponseModel({
    required this.message,
    required this.body,
    required this.token,
  });
  late final String message;
  late final Body? body;
  late final String token;
  
  LoginResponseModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    body = Body.fromJson(json['body']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['body'] = body!.toJson();
    _data['token'] = token;
    return _data;
  }
}

class Body {
  Body({
    //required this._id,
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.email,
    required this.password,
    required this.confrimpassword,
    required this.createdAt,
    required this.updatedAt,
   // required this._V,
  });
  late final String _id;
  late final String firstname;
  late final String lastname;
  late final String username;
  late final String email;
  late final String password;
  late final String confrimpassword;
  late final String createdAt;
  late final String updatedAt;
  late final int _V;
  
  Body.fromJson(Map<String, dynamic> json){
    _id = json['_id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    confrimpassword = json['confrimpassword'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    _V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = _id;
    _data['firstname'] = firstname;
    _data['lastname'] = lastname;
    _data['username'] = username;
    _data['email'] = email;
    _data['password'] = password;
    _data['confrimpassword'] = confrimpassword;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = _V;
    return _data;
  }
}