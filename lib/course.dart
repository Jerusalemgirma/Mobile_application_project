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
                                    onPressed: () {
                                      // Navigator.pop(context);
                                    },
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
                                    onPressed: () {
                                      //Navigator.pop(context);
                                    },
                                    child: Text(
                                      "ENGLISH",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    )))
                          ],
                        )))
              ])),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: Color.fromARGB(255, 131, 122, 85),
                  padding: EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "../assets/image.jpeg",
                              width: 150,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Text("Name",
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Email",
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Grade",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Status",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Text("Settings",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Exams",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.question_mark),
                    Text("HELP",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Feedbacks",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
