import 'package:demoapp/models/products.dart';
import 'package:demoapp/pages/favoritepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveButton extends StatefulWidget {
  const SaveButton({super.key, required this.item});
  final Products item;
  

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  Color color1 = Colors.grey;
  Color color2 = Colors.grey.shade200;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: (){

            Navigator.push(context , MaterialPageRoute(builder: (context)=>  FavoritePage(itemList: [widget.item],)));

          setState(() {
            if(color1 == Colors.grey){
              color1 = Colors.black;
              color2 = Colors.black;
            }
            else{
              color1 = Colors.grey;
              color2 = Colors.grey.shade200;
            }
            
          });
        },
        child: Column(
          
          children: [
            Container(height: 55,width: 55,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:  color2),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 10,
                            width: 10,
                            child: SvgPicture.asset("assets/icons/marker 1.svg")),
                        ),
                        ),
                       
          ],
        ),
      ),
    );
  }
}
