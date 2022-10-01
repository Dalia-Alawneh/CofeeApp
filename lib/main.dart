import 'package:coffeapp/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
         brightness: Brightness.dark,
       primaryColor: Colors.orange,
       progressIndicatorTheme: ProgressIndicatorThemeData(
         color: Colors.orange
       ),
       cursorColor: Colors.orange
       // accentColor: Colors.orange
     ),

      home: const HomePage(),
    );
  }
}
