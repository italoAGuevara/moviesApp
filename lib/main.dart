import 'package:flutter/material.dart';

import 'providers/movies_provider.dart';
///////////////////////// OWN CLASS //////////////////////////////////
import 'screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:movies_app/theme/theme_light.dart';


void main() {
  runApp( AppState() );
}

class AppState extends StatelessWidget {
     
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(
          create: ( _ ) => MoviesProvider(), lazy: false,
        )
      ],

      child: const MyApp(),
    );
  }
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

