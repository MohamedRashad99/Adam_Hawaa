// ignore_for_file: use_key_in_widget_constructors


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../../widgets/custom_cached_image.dart';


class BannerSlider extends StatelessWidget {
  //final List<Sliders> sliders;

  const BannerSlider({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Container(
     // margin: const EdgeInsets.symmetric(vertical: 15),
     //color: Colors.red,
  //color: Colors.white,

      height: height*0.25,
     width: width*0.8,
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (context, index, pageViewIndex) {
          return InkWell(
            onTap: () {
              //  interstitialAd.show();

             // navigateTo(context, BannerDetailsScreen(id: sliders[index].id,));
            },
            child: Container(
            //  margin: const EdgeInsets.only(left: 10, right: 10),
              child: customCachedNetworkImageWitoutTitle(
                  context: context,
// '' ??
                  url:
                 'https://damassets.autodesk.net/content/dam/autodesk/www/homepage/fy22/aec-collections--thumb-720x480.jpg',
                  fit: BoxFit.cover),
            ),
          );
        },
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          // reverse: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
