import 'package:demoapp/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});
  
  @override
  Widget build(BuildContext context) {
     var h = MediaQuery.of(context).size.height;
var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [ Container(
                        child: Row(
                          children: [SvgPicture.asset("assets/icons/ri_search-2-line.svg"),
                          const Spacer(),
                          Text('Notifications',style: GoogleFonts.gelasio(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                          const Spacer(),
                          SvgPicture.asset("assets/icons/bi_cart2.svg")        
                      ]
                        ),
                      ),
                    
                  
                  ]),
              ),
                 const SizedBox(
                    height: 20,
                  ),
                  Notificationcard( text1: 'Your order has been placed',text2: "New",image: demoItems[1].imagePath,),
             
              Notificationcard( text1: 'Your order #123456789 has been canceled',text2: "",image: demoItems[0].imagePath,),
             
               Container(

          height: 130,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
          
            
            color: Colors.grey.shade300, // Set the background color if needed
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Notification Text
              Expanded(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discover hot sales on furniture',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // "HOT" text on the right bottom side
              Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  'HOT',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
              ),
              Notificationcard(text1: "Your order #123456789 has been shipped successfully",text2: "",image: demoItems[0].imagePath,),
              Notificationcard(text1: "Your order #123456789 has been confirmed",text2: "",image: demoItems[2].imagePath,),
              Notificationcard(text1: "Your order #123456789 has been canceled",text2: "",image: demoItems[1].imagePath,),
            
            
                  
            ],
          ),
        ),
        
               

               


    
 )); }}

class Notificationcard extends StatelessWidget {
  const Notificationcard({
    super.key,required this.text1, required this.text2, required this.image, 
  });
  final String text1;
  final String text2;
  final String image;
  

  @override
  Widget build(BuildContext context) {

    
    return Container(

        padding: EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image on the left side
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    image: DecorationImage(
      image: AssetImage(image), // Replace with your image path
      fit: BoxFit.cover,
    ),
    color: Color.fromARGB(197, 220, 209, 209)
              ),
            ),
            SizedBox(width: 16.0),
            // Order ID and Description
            Expanded(
              child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text1,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8.0),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec.',
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.grey,
        ),
      ),
    ],
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 70),
              alignment: Alignment.bottomRight,
              child: Text(
    text2,
    style: TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
    ),
              ),
            ),
          ],
        ),
      );
  }
}

