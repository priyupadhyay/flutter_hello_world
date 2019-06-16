import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {

   final List<MusicCard> musicList= [
     MusicCard("assets/end.jpg","In the end","Linkin Park"),
     MusicCard("assets/nik.jpg","Kehti hain..","Priyank Upadhyay"),
   ];
   
     @override
     Widget build(BuildContext context) {
       return Container(
         child: ListView( 
           children: <Widget>[
             Column(
             children: <Widget>[
              for(var item in musicList)
                item
             ],
           ),
           ], 
         ),
       );
     }
   }
   
   class MusicCard extends StatelessWidget{
     final String imagePath, songTitle,  artistName;

  MusicCard(this.imagePath, this.songTitle, this.artistName);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
                   height: 100.0,
                   color: Colors.pink.withAlpha(100),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                       Container(
                         width: 100.0,
                         child: Image.asset(imagePath, fit: BoxFit.cover,)
                         ),
                       Padding(
                         padding: const EdgeInsets.only(left:16.0,),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text(songTitle, style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white), ),
                             Text(artistName, style: TextStyle(fontSize: 18.0,color: Colors.white),),
                           ],
                         ),
                       ),
                       
                     ],
                   ),
                 ),
     );
  }

}