import 'package:flutter/material.dart';

class ImageRow extends StatelessWidget {
  const ImageRow(
      {super.key,
      required this.image1,
      required this.image2,
      required this.image3});

  final String image1;
  final String image2;
  final String image3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image1,
            ),
            Image.asset(
              image2,
            ),
            Image.asset(
              image3,
            ),
          ],
        ),
      ],
    );
  }
}
