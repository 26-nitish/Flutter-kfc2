import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://im1.dineout.co.in/images/uploads/restaurant/sharpen/9/d/r/m9-15578310235cda9d6f13871.jpg?tr=tr:n-xlarge"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.grabon.in/gograbon/images/merchant/1536747990676.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://b.zmtcdn.com/data/menus/931/931/36f8a3b9e5dbf6435f903c9a8745bcc8.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://lh3.googleusercontent.com/w5OINNxcmefxLLMYcN2a07FdJ3BLh4wDmNCXoz9cNvLDVT5YWPGSjCEZ6QjeGWzWStnNRQPDhKP9SYB5EmXT45Jbl8ng=w512-rw"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: Duration(seconds: 4)),
      ),
    );
  }
}
