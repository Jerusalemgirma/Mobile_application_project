import 'package:enmar_application_1/course.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.red[200],
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "How old are you?",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.pink,
            ),
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("../assets/s1.jpg"),
                        fit: BoxFit.cover)),
                child: Column(children: [
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                        Expanded(
                            child: Container(
                                margin: EdgeInsets.all(30),
                                padding: EdgeInsets.all(30),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Center(
                                        child: Text(
                                          "Your age is ",
                                          style: TextStyle(
                                            fontSize: 25.0,
                                            color: Colors.white,
                                            backgroundColor: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          course()));
                                            },
                                            child: Text("Below 5",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black)))),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          course()));
                                            },
                                            child: Text("6 to 10",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                )))),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          course()));
                                            },
                                            child: Text("11 to 14",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                )))
                                        // SizedBox(height: 20,),
                                        )
                                  ],
                                )))
                      ]))
                ]))));
  }
}
