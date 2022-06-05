import 'dart:ui';

import'package:flutter/material.dart';
import 'package:flutter_application_6/auth/screen/login_screen.dart';
import 'package:flutter_application_6/register/bloc/register_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_6/register/index.dart';
import 'package:go_router/go_router.dart';


class signupe extends StatelessWidget {
   signupe({ Key? key }) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confrimpassController = TextEditingController();

  String? firstname;
  String? lastname;
  String? username;
  String? password;
  String? email;
  String? confrimpassword;




  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body:Padding(
        
        padding: const EdgeInsets.all(12.0),

              child:Form(
                key: formKey,
                child: ListView(
                children: [
                
                  
                  Text("sign up here new student",style: TextStyle(fontSize:25),),
                  
                  SizedBox(height:30),


                TextFormField(
                  
                  controller: firstnameController,
                  onChanged: (value) {
                    firstname=value;

                  },
                  decoration: InputDecoration(
                  hintText: "firstname",
                  border: OutlineInputBorder()
                ),


                validator: (String? firstname){
                  if (firstname==null || firstname.isEmpty){
                    return "firstname must not be empty";

                  }
                },

                ),

       SizedBox(height: 20,),





                  TextFormField(
                  controller: lastnameController,

                  onChanged: (value) {
                    lastname=value;
                  },
                  decoration: InputDecoration(
                  hintText: "lastname",
                  border: OutlineInputBorder()
                ),
                validator: (String? lastname){
                  if (lastname==null || lastname.isEmpty){
                    return "lastname must not be empty";
                    
                  }}
                





                ),

       SizedBox(height: 20,),




                  TextFormField(
                      controller: usernameController,

                  onChanged: (value) {
                    username=value;
                  },
                  decoration: InputDecoration(
                  hintText: "username",
                  border: OutlineInputBorder()
                ),





                validator: (String? username){
                  if (username==null || username.isEmpty){
                    return "username must not be empty";
                    
                  }},
                
                ),


       SizedBox(height: 20,),



                  TextFormField(
                       controller: emailController,

                  onChanged: (value) {
                    email=value;
                  },
                  decoration: InputDecoration(
                  hintText: "email",
                  border: OutlineInputBorder()
                ),

                validator: (String? email){
                  if (email==null || email.isEmpty){
                    return "email must not be empty";
                    
                  }
                  
                  
                  final validEmail=RegExp("[A-Za-z]@[A-Za-z].[A-Za-z]");
                  final correct=validEmail.hasMatch(email);
                  return correct?null: "enter correct form of email";
                  },
                




                ),




       SizedBox(height: 20,),

                  TextFormField(
                    controller: passController,

                  onChanged: (value) {
                    password=value;
                  },
                  obscureText: true,

                  decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder()
                ),
                validator: (String? password){

                  if (password==null || password.isEmpty){
                    return "password must not be empty";}
                  final validPassword=password.length>=8;
                  return validPassword? null  :"password is too short";


              
                    
                      },
                






                ),




       SizedBox(height: 20),



                  TextFormField(
                       obscureText: true,

                    controller: confrimpassController,

                  onChanged: (value) {
                    confrimpassword=value;
                  },
                  decoration: InputDecoration(
                  hintText: "confrim password",
                  border: OutlineInputBorder()
                ),


                validator: (String? confrimpassword){

                  if (confrimpassword==null || confrimpassword.isEmpty){
                    return "this password too must not be empty";}


                    if (confrimpassword!=passController.text)
                    {
                      return "password not match ";
                    }

                }
                 ),




                SizedBox(height: 15),

                BlocConsumer<registerBloc,registerState>(
                  listenWhen: (previous, current) {
                    return current is SignupSuccessful;
                  },
                  listener:(_,registerState state){
                     GoRouter.of(context).go('/homePage');
                  },
                  builder:(_,registerState state){
                    Widget buttonChild=Text("sign in");

                    if  (state is SignIn){
                      buttonChild = SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );

                    }

                    if (state is SignupSuccessful){
                      buttonChild=Text("signin succesfully");
                    }

                     if (state is SignupFailed){
                      buttonChild=Text("signin faild");
                    }

                    return ElevatedButton(
                      onPressed:() {
                      final formValid = formKey.currentState!.validate();
                      if (!formValid) return;
                      final RegisterBloc=BlocProvider.of<registerBloc>(context);
                      RegisterBloc.add(Signup(
                        firstname: firstnameController.text, 
                        lastname: lastnameController.text, 
                        username: usernameController.text, 
                        email: emailController.text, 
                        password: passController.text, 
                        confrimpassword: confrimpassController.text));

                      },
                       child: buttonChild,
                       );

                  },),
                  SizedBox(height:40),



                  FlatButton(onPressed:()=> GoRouter.of(context).go('/login'),
                   child: Text("if you have account goto login page",style: TextStyle(color: Colors.blue,fontSize:10),)),





               

              

              ],



              )
              )

        
        ),
        );
    
    
  }
  
}



// class Home_Screen extends StatelessWidget {
//   const Home_Screen({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//   children:[ Text("welcome to home dear student"),
  
//   ElevatedButton(
//     onPressed:()=>  GoRouter.of(context).go('/signup'), 
//     child: Text("back")
//     )]
      
//     );
//   }
// }