import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:midterm_application/screens/home_screen.dart';


void main() {
  // className objectName = constructorName([parameter_list]);
  // var/const objectName = constructorName([parameter_list]);
  // const app = MyApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Screan',
      home: const HomeScreen(),
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
    );
  }
}
