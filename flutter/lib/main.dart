import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_6/register/index.dart';
import 'package:flutter_application_6/auth/index.dart';

import 'package:flutter_application_6/register/screen/signup.dart';
import 'package:flutter_application_6/auth/screen/login_screen.dart';
import 'package:go_router/go_router.dart';



void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  //const myApp({ Key? key }) : super(key: key);

  @override
  final _router = GoRouter(
   routes: [
     GoRoute(
       path: '/',
       builder: (context, state) =>  signupe (),
     ),
     GoRoute(
       path: '/login',
       builder: (context, state) =>  LoginScreen(),
     ),
//      GoRoute(
//           path: '/';
//           builder: (context, state)=> const pageIsScreen();
//         ),
//      GoRoute(
//           path: '/';
//           builder: (context, state)=> const pageIsScreen();
//         ),

      /*GoRoute(
       path: '/homePage',
       builder: (context, state) =>  FirstScreen(),
     ),

      GoRoute(
       path: '/course',
       builder: (context, state) =>  course(),
     ),


      GoRoute(
       path: '/homepage',
       builder: (context, state) =>  Home_Screen(),
     ),


      GoRoute(
       path: '/homeTwo',
       builder: (context, state) =>  Home2Screen(),
     ),*/


      
      



   ],
 );

  Widget build(BuildContext context) {
    return BlocProvider(create:(_)=>registerBloc(),

    child: MaterialApp.router(

      
            routeInformationParser: _router.routeInformationParser,
            routerDelegate: _router.routerDelegate,
            title: 'GoRouter Example',

                 debugShowCheckedModeBanner: false,
                 //home: signupe(),
       ));
      
    
  }
}
