import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context) {
     var h = MediaQuery.of(context).size.height;
var w = MediaQuery.of(context).size.width;
   return Scaffold(
    backgroundColor: Color.fromARGB(77, 237, 232, 232),
    body:SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          
          children: [
            Container(
                    child: Row(
                      children: [SvgPicture.asset("assets/icons/ri_search-2-line.svg"),
                      const Spacer(),
                      Text('Profile',style: GoogleFonts.gelasio(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      const Spacer(),
                      SvgPicture.asset("assets/icons/bi_cart2.svg")        
                  ]
                    ),
                  ),
          
                  const SizedBox(
                    height: 20,
                  ),
                
            Container(
              height: h*0.12,
              width: double.infinity,
              color: Colors.white12,
              child:  Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white12,
                    radius: 40,
                    child: Image(image: AssetImage("assets/images/Ellipse 30.png",),fit: BoxFit.fill,),
                  ),
                  const SizedBox(
                    width: 20
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bruno Pham',style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Text('bruno203@gmail.com',style: GoogleFonts.nunitoSans(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  
                ]
              )
            ),


           const SizedBox(
             height: 10,
           ) ,

           const tilewidget(text1: 'My Orders', text2: 'Already have 10 orders',),
           const tilewidget(text1: 'Shipping Addresses', text2: '03 addresses',),
           const tilewidget(text1: 'Payment Methods', text2: 'You have 2 cards',),
           const tilewidget(text1: 'My Reviews', text2: 'Reviews for 5 items',),
           const tilewidget(text1: 'Settings', text2: 'Notifications,Password,FAQ,Contact',),
          ],
        ),
      ),
    ) ,
     
   );
  }
}

class tilewidget extends StatelessWidget {
  const tilewidget({
    super.key, required this.text1, required this.text2,
    
  });

  final String text1;
  final String text2;

 

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Column(
      children: [

        Container(
         
           height: h*0.11,
           width: double.infinity,
           color: Colors.white,
           child:  Row(
             children: [
               
               SizedBox(
                 width: 20
               ),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(text1,style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                   SizedBox(height: 10,),
                   Text(text2,style: GoogleFonts.nunitoSans(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                 ],
               ),
               
             ]
           )
         ),
         const SizedBox(
           height: 15,
         )
      ],
    );
  }
}
