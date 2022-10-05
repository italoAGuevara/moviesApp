import 'package:flutter/material.dart';

//////////////////////////// OWN CLASS /////////////////////////
import 'package:movies_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  //const DetailsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
         title: const Text('Movies in theater'),
         elevation: 0,

         actions: [
          IconButton(
            icon: const Icon( Icons.search_outlined) ,
            onPressed: (){},
          )
         ],
      ),

      body: Column(
          children: [
            
            //tarjetas principales
            const CardSwiper(),
            
            //Slider de pelicuasl
            Expanded(
              child:MovieSlider(), 
            )            
          ],       
      )      
    );
  }
}