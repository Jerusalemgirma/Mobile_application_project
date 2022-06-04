import 'package:flutter/material.dart';

void main() {
  runApp(const betty());
}

class betty extends StatelessWidget {
  const betty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
