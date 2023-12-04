import 'package:demoapp/models/products.dart';
import 'package:demoapp/pages/productpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});

  final Products item;
  @override
  Widget build(BuildContext context) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductPage(item: item)));
              
            },
            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.withOpacity(0.5)),
                  child: SizedBox(
                    height: 5,
                    width: 5,
                    child: SvgPicture.asset(
                      "assets/icons/shopping_bag icon.svg"
                    ),
                  ),
                )
              ),
            ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: GoogleFonts.nunitoSans(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '\$ ${item.price.toStringAsFixed(2)}',
                style: GoogleFonts.nunitoSans(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
                  ),
                ),
              ],
            ),
          ),
          );

    //     return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(15),
    //     color: Colors.white,
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         height: 150,
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //           image: DecorationImage(
    //             image: AssetImage(item.imagePath),
    //             fit: BoxFit.cover,
    //           ),
    //           borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               item.name,
    //               style: GoogleFonts.nunitoSans(
    //                 color: Colors.grey,
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //             SizedBox(height: 5),
    //             Text(
    //               '\$ ${item.price.toStringAsFixed(2)}',
    //               style: GoogleFonts.nunitoSans(
    //                 color: Colors.black,
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );



    // return  Container(
    //           height: 250,
    //           width: 190,
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(15),
                
                
    //           ),
    //           child: Column(children: [
    //             Container(width: 190,
    //             height: 200,
                
    //             decoration:  BoxDecoration(image: DecorationImage(image: AssetImage(item.imagePath,),fit: BoxFit.cover),
    //               borderRadius: BorderRadius.circular(15),
    //               color: Colors.white
    //             ),
    //             ),
    //             Container(
    //               margin: EdgeInsets.only(right: 30),
    //               child: Column(
    //               children: [
    //                 Text(item.name,style: GoogleFonts.nunitoSans(color: Colors.grey,fontSize: 15),),
    //                 Padding(
    //                   padding: const EdgeInsets.only(right: 80),
    //                   child: Text("\$ ${item.price}",style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 15)),
    //                 )
    //               ],
    //             )), 
                
    //           ]),
    //         );
  }
}
