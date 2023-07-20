import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CaraouselScreen extends StatelessWidget {
  const CaraouselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://png.pngtree.com/png-clipart/20220601/original/pngtree-home-insurance-banner-house-safe-png-image_7842304.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://img.freepik.com/free-vector/people-holding-travel-related-icons_53876-43074.jpg?t=st=1681886770~exp=1681887370~hmac=1ce0a6b6bbeb7c3e75e1bf37218e166dd905706b7766620846359d3acd564303",),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://img.freepik.com/free-psd/real-estate-banner-template-concept_23-2148554204.jpg?w=826&t=st=1681886562~exp=1681887162~hmac=2392bbbdd148b6ddcba40b75df2b83ba1a982b01880917bf5fdaeea7377b7c80"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //4th Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://img.freepik.com/free-vector/car-insurance-isometric-landing-page_107791-1245.jpg?w=740&t=st=1681886814~exp=1681887414~hmac=99899fcd46d4f136d333b74fcfa12dcde06567cf12a41726f048bf1a1aeba565"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //5th Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://img.freepik.com/free-vector/insurance-agent-resolving-car-accident_53876-64649.jpg?w=740&t=st=1681886770~exp=1681887370~hmac=2a83497e59250bcf5567d2a63cb7451d78ddec7ae640c11940ec0b8a072cc2af"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],

          //Slider Container properties
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }
}
