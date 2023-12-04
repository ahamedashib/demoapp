


import 'package:demoapp/models/products.dart';
import 'package:demoapp/widgets/categoryicon.dart';
import 'package:demoapp/widgets/productcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [SvgPicture.asset("assets/icons/ri_search-2-line.svg"),
                Spacer(),
                Column(
                  children: [
                    Text('Make home',style: GoogleFonts.gelasio(color: Colors.grey,fontSize: 20),),
                    Text('BEAUTIFUL',style: GoogleFonts.gelasio(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
                Spacer(),
                SvgPicture.asset("assets/icons/bi_cart2.svg")
                  
                  
                ]
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryIcon(icon: "assets/icons/star 1.svg",text: "Popular",),
                  CategoryIcon(icon: "assets/icons/chair 4.svg", text: "Chair",),
                  CategoryIcon(icon: "assets/icons/table 1 1.svg", text: "Table",),
                  CategoryIcon(icon: "assets/icons/sofa 1.svg", text: "Sofa",),
                  CategoryIcon(icon: "assets/icons/bed 1.svg", text: "Bed",),
                  CategoryIcon(icon: "assets/icons/table 1 1.svg", text: "Table",),
            
                                
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 30,
                mainAxisSpacing: 50
              ),
              children: [for (Products item in demoItems)
              ProductCard(item: item),],  
              
              // for (Products item in demoItems)
              // ProductCard(item: item),
                      
                    
                       
                    ),
            )],
        ),
      ),),
      
    );
  }
  }