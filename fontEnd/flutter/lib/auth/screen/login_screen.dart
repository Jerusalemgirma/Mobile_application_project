import 'dart:ui';

import'package:flutter/material.dart';
import 'package:flutter_application_6/register/screen/signup.dart';

import 'package:flutter_application_6/auth/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_6/auth/index.dart';
import 'package:go_router/go_router.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(_)=>AuthBloc(),
      child:
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("Login page"),
              TextFormField(
                onChanged: (value) {
                  email=value;
                },
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                validator: (String? email) {
                  if (email == null || email.isEmpty) {
                    return "Email must not be empty";
                  }

                  final validEmail = RegExp("[A-Za-z]@[A-Za-z].[A-Za-z]");
                  final correct = validEmail.hasMatch(email);

                  return correct ? null : "Enter a valid email";
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  password=value;
                },
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (String? password) {
                  if (password == null || password.isEmpty) {
                    return "Password must not be empty";
                  }

                  final validPassword = password.length >= 8;
                  return validPassword ? null : "Password too short";
                },
              ),
              SizedBox(height: 10),

              BlocConsumer<AuthBloc, AuthState>(
                listenWhen: (previous, current) {
                  return current is LoginSuccessful;
                },
                listener: (_, AuthState state) {
                   GoRouter.of(context).go('/homePage');
                },
                builder: (_, AuthState state) {
                  Widget buttonChild = Text("Log in");

                  if (state is LogingIn) {
                    buttonChild = SizedBox(
                      height: 10,
                      width: 10,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    );
                  }

                  if (state is LoginSuccessful) {
                    buttonChild = Text("Login successful");
                  }

                  if (state is LoginFailed) {
                    buttonChild = Text("Login Failed maybe invalid email/password");
                  }

 

                  return ElevatedButton(
                    onPressed: () {
                      final formValid = formKey.currentState!.validate();
                      if (!formValid) return;

                      final authBloc = BlocProvider.of<AuthBloc>(context);
                      authBloc.add(Login(
                        email: emailController.text,
                        password: passController.text,
                      ));
                    },
                    child: buttonChild,
                  );
                },
              ),
              SizedBox(height: 20,),



                FlatButton(onPressed:()=>  GoRouter.of(context).go('/'),
                   child: Text(" to register goto signup page"))
            ],
          ),
        ),
      ),
    ),
    );
  }
}

// class Home2Screen extends StatelessWidget {
//   const Home2Screen({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text("welcome from successfull loging in"),
//         ElevatedButton(
//           onPressed:()=>  GoRouter.of(context).go('/'), 
//         child: Text("back")
//         )
//       ],

      
//     );
//   }
// }