import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SlidePages(),
    // theme: ThemeData(
    //   fontFamily: "StyleScript",
    // ),
  ));
}

class SlidePage extends StatelessWidget {
  final String image;
  final String text;

  SlidePage({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            // height: 200,
            // width: 200,
          ),
          SizedBox(height: 20),
          Text(
              text,
          style: TextStyle(fontSize: 20, fontFamily: "StyleScript"),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SlidePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        SlidePage(
          image: "assets/images/Karimov.jpg",
          text: "Islom Abdug`aniyevich Karimov",
        ),
        SlidePage(
          image: "assets/images/Ibn_Sino.jpg",
          text: "Abu Ali Ibn Sino",
        ),
        SlidePage(
          image: "assets/images/Habib.jpg",
          text: "Habib Nurmagomedov",
        ),
        SlidePage(
          image: "assets/images/Steve.jpg",
          text: "Steve Jobs",
        ),
        SlidePage(
          image: "assets/images/Zakir_Naik.jpg",
          text: "Zakir Nayk",
        )
      ],
    );
  }
}