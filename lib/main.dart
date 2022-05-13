import 'package:flutter/material.dart';
import 'package:enmar_application_1/age.dart';
import 'package:enmar_application_1/course.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        MaterialPageRoute wrap(Widget screen, {RouteSettings? settings}) {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => screen,
          );
        }

        if (settings.name == '/firstScreen' || settings.name == '/') {
          return wrap(FirstScreen());
        }

        final url = Uri.parse(settings.name!);

        if (url.pathSegments.first == '' && url.pathSegments.length == 2) {
          return wrap(
            course(),
            settings: RouteSettings(
              name: settings.name,
              arguments: url.pathSegments.last,
            ),
          );
        }
      },
    );
  }
}
