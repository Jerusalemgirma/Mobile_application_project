class RegisterRequestModel  {
  RegisterRequestModel ({
    required this.firstname,
    required this.lastname,
    required this.username,
    required this.email,
    required this.password,
    required this.confrimpassword,
  });
  late final String? firstname;
  late final String? lastname;
  late final String? username;
  late final String? email;
  late final String? password;
  late final String? confrimpassword;
  
  RegisterRequestModel .fromJson(Map<String, dynamic> json){
    firstname = json['firstname'];
    lastname = json['lastname'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    confrimpassword = json['confrimpassword'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['firstname'] = firstname;
    _data['lastname'] = lastname;
    _data['username'] = username;
    _data['email'] = email;
    _data['password'] = password;
    _data['confrimpassword'] = confrimpassword;
    return _data;
  }
}