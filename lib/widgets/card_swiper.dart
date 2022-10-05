
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

//////////////////////////// OWN CLASS /////////////////////////
import '../models/models.dart';


class CardSwiper extends StatelessWidget {

  final List<Movie> movies;
   
  const CardSwiper({
    Key? key, 
    required this.movies
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of( context ).size;

    return  Container(
      
        //width: double.infinity,
        height: size.height  * 0.5,
        //color: Colors.red,

        child: Swiper(
          
          itemCount: movies.length,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
          itemHeight: size.height * 0.4,
          
          itemBuilder: ( _, int i ) {

            final movie = movies[i];                   

            return GestureDetector(

              onTap: () => Navigator.pushNamed( context, 'details' , arguments: 'movie-instance'),

              child : ClipRRect(
                
                borderRadius: BorderRadius.circular(20),

                  child : FadeInImage(
                    placeholder: const AssetImage('/no-image.jpg'), 
                    image: NetworkImage( movie.fullPosterImg ),
                    fit: BoxFit.cover,

                  )
              )
            );
          },

        ),

      
    );
  }
}