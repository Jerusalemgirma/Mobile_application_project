import 'package:flutter/material.dart';
import 'age.dart';

void main() {
  runApp(course());
}

class course extends StatelessWidget {
  const course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Choose course you want to take"),
            centerTitle: true,
            backgroundColor: Colors.pink,
          ),
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("../assets/s2.jpeg"),
                      fit: BoxFit.cover)),
              child: Column(children: [
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
                                  "Select a course you want to take ",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    backgroundColor: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () => context.go('/'),
                                    child: Text(
                                      "MATHEMATICS",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ))),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () => context.go('/'),
                                    child: Text(
                                      "ENGLISH",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    )))
                          ],
                        )))
              ])),
        ));
  }
}
