import 'dart:convert';

RegisterResponseModel registerResponseModel(String str)=>
   RegisterResponseModel.fromJson(json.decode(str));




class RegisterResponseModel {
  RegisterResponseModel({
    required this.userDetails,
    required this.message,
  });
  late final UserDetails? userDetails;
  late final String message;
  
  RegisterResponseModel.fromJson(Map<String, dynamic> json){
    userDetails = json['userDetails']!=null?UserDetails.fromJson(json['user_details']):null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_details'] = userDetails!.toJson();
    _data['message'] = message;
    return _data;
  }
}

class UserDetails {
  UserDetails({
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.email,
    required this.password,
    required this.confrimpassword,
    //required this._id,
    required this.createdAt,
    required this.updatedAt,
    //required this._V,
  });
  late final String firstname;
  late final String lastname;
  late final String username;
  late final String email;
  late final String password;
  late final String confrimpassword;
  late final String _id;
  late final String createdAt;
  late final String updatedAt;
  late final int _V;
  
  UserDetails.fromJson(Map<String, dynamic> json){
    firstname = json['firstname'];
    lastname = json['lastname'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    confrimpassword = json['confrimpassword'];
    _id = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    _V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['firstname'] = firstname;
    _data['lastname'] = lastname;
    _data['username'] = username;
    _data['email'] = email;
    _data['password'] = password;
    _data['confrimpassword'] = confrimpassword;
    _data['_id'] = _id;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = _V;
    return _data;
  }
}