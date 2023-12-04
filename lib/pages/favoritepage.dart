import 'package:demoapp/models/products.dart';
import 'package:demoapp/widgets/favoritelisttile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritePage extends StatelessWidget {
  List? itemList;
  FavoritePage({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/ri_search-2-line.svg"),
                    const Spacer(),
                    Text(
                      'Favorites',
                      style: GoogleFonts.gelasio(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/icons/bi_cart2.svg"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      for (Products item in demoItems) FavoriteListTile(item: item),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Add to cart all",style: GoogleFonts.nunitoSans(fontSize: 15),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
