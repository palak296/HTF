import 'package:flutter/material.dart';
import 'package:untitled/screens/home/components/search_title.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Special for you",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/banner1.jpg",

                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/banner2.jpg",

                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/banner3.jpg",

                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),

            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),


              ],
            ),

        ),
      ),
    );
  }
}
