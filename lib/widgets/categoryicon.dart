import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryIcon extends StatefulWidget {
  CategoryIcon({Key? key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  State<CategoryIcon> createState() => _CategoryIconState();
}

class _CategoryIconState extends State<CategoryIcon> {
  int _selectedCategoryIndex = 0;
  Color color1 = Colors.grey;
  Color color2 = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          setState(() {
            _selectedCategoryIndex = 0;
             color1 = Colors.black;
              color2 = Colors.black;

            // if (color1 == Colors.grey) {
            //   color1 = Colors.black;
            //   color2 = Colors.black;
            // } else {
            //   color1 = Colors.grey;
            //   color2 = Colors.grey.shade200;
            // }
          });
        },
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color2,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(widget.icon, height: 10, width: 10),
              ),
            ),
            const SizedBox(height: 4),
            Text(widget.text, style: GoogleFonts.nunitoSans(color: color1, fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
