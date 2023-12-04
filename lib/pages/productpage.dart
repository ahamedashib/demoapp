import 'package:demoapp/models/cartitem.dart';
import 'package:demoapp/models/products.dart';
import 'package:demoapp/pages/addtobasketscreen.dart';
import 'package:demoapp/widgets/appbutton.dart';
import 'package:demoapp/widgets/itemwidgetcounter.dart';
import 'package:demoapp/widgets/savebutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.item});
  final Products item;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


        Stack(
          children: [Container(
            margin: EdgeInsets.only(left: 70),
            height: 500,
            width: 450,

             decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.item.imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),))
                ),
                Container(
                  margin: EdgeInsets.only(left: 40,
                  top: 180),
                  height: 200,
                  width: 60,
                  // 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  
                      children: [SvgPicture.asset("assets/icons/Group 16.svg"),
                      const Spacer(),
                      SvgPicture.asset("assets/icons/Group 17.svg"),
                      const Spacer(),
                      SvgPicture.asset("assets/icons/Group 18.svg")],
                    ),
                  ),
                )
          

          ],
        ),
        const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children:
             [
              Text(widget.item.name,style: GoogleFonts.gelasio(color: Colors.black,fontSize: 30)),
            ],
          ),
        ),
        const SizedBox(height: 5,),

        Padding(
          padding: const EdgeInsets.only(left: 40,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('\$ ${widget.item.price}',style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
              const Spacer(),
              const ItemCounterWidget(),

            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            children: [
              SizedBox(
                height: 25,
                width: 25,
                child: SvgPicture.asset("assets/icons/star 1-2.svg")),
                const SizedBox(
                  width: 5,
                ),
                Text('4.5',style: GoogleFonts.nunitoSans(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),
                const SizedBox(width: 20,),
                Text('(50 reviews)',style: GoogleFonts.nunitoSans(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),)

            ],
          ),
        ),
        const SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 20),
          child: Text('Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',style: GoogleFonts.nunitoSans(color: Colors.grey.shade400,fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 20),
          child: Row(
            children: [
              SaveButton(item: widget.item),
              
              Container(width: 250,
                child: AppButton(label: "Add to cart", onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddtoBasketScreen()) );
                }))
            ],
          ),
        )
        
      ],)
    );
  }}