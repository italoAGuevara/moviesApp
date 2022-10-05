import 'package:flutter/material.dart';
import 'package:movies_app/theme/theme_light.dart';

///////////////////////// OWN CLASS //////////////////////////////////
import 'screens/screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Movies',

      initialRoute:  'home',
      routes : {
        'home':    ( _ ) => HomeScreen(),
        'details': ( _ ) => DetailsScreen()
      },

      theme: ThemeLight.theme
      
    );
  }
}

