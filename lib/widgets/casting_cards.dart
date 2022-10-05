import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
     
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only( bottom: 30 ),
      width: double.infinity,
      height: 180,      

      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: ( _, int index) =>  _CastCard()
        )
      );
    
  }
}


class _CastCard extends StatelessWidget {   
    
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 10 ),
      width: 110,
      height: 100,      
      child: Column(
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('./loading.gif'),
              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzvp1XfDYoDYO40OrjtLCQ8OBUYM5svYDDJQ&usqp=CAU'),
            ),
          ),

          const SizedBox( height: 5,), 

          const Text(            
            'actor.name sfsfdsdfdsdfdsf',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center
          )
        ],
      ),

    );
  }
}