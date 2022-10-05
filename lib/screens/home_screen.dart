import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//////////////////////////// OWN CLASS /////////////////////////
import 'package:movies_app/widgets/widgets.dart';
import '../providers/movies_provider.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>( context );

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
            CardSwiper( movies : moviesProvider.onDisplayMovies ),
            
            //Slider de pelicuasl
            Expanded(
              child: MovieSlider( 
                movies : moviesProvider.moviePopular, 
                title: 'populares', 
                onNextPage: () => moviesProvider.getMoviesPopular()
              ), 
            ),     
          ],       
        ) 
          
    );
  }
}