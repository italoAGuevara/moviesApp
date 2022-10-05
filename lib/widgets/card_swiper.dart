
import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class CardSwiper extends StatelessWidget {
   
  const CardSwiper({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of( context ).size;

    return  Container(
      
        //width: double.infinity,
        height: size.height  * 0.5,
        //color: Colors.red,

        child: Swiper(
          
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
         // itemHeight: size.height * 0.4,
          
          itemBuilder: ( _, int i ) {

            return GestureDetector(

              onTap: () => Navigator.pushNamed( context, 'details' , arguments: 'movie-instance'),

              child : ClipRRect(
                
                borderRadius: BorderRadius.circular(20),

                  child : const FadeInImage(
                    placeholder: AssetImage('no-image.jpg'), 
                    image: NetworkImage('https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg'),
                    fit: BoxFit.cover,

                  )
              )
            );
          },

        ),

      
    );
  }
}