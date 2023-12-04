import 'dart:math';

import 'package:demoapp/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteListTile extends StatelessWidget {
  const FavoriteListTile({super.key, required this.item});
  final Products item;
  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
var w = MediaQuery.of(context).size.width;
   return Column(
     children: [
     
       Container(
           height: h*0.15,
           width: w*2,
           child: Row(
             children: [Image.asset(item.imagePath),
             SizedBox(
               width: 40,
             ), Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 SizedBox(
                   height: 20,
                 ),
                 Text(item.name,style: GoogleFonts.nunitoSans(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('\$ ${item.price}',style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                   ],
                 ),
               ],
             ),
             Spacer(),
             Column(
               children: [
                 SvgPicture.asset("assets/icons/Shape.svg"),
                 Spacer(),
             Container(
             height: 20,
             width: 20,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.5)),
             child: SizedBox(
               height: 5,
               width: 5,
               child: SvgPicture.asset(
                 "assets/icons/Vector.svg"
               ),
             ),
           )
               ],
             ),
             
             
                
         ]
           ),
         ),
      Divider(thickness: 0.5,color: Colors.grey,),
     ],
   );
              
  }
}
