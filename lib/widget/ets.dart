import 'package:explore_jakarta/screen/detail_product.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SockCard extends StatelessWidget {
  final String imageUrl;
  final Color startColor;
  final Color endColor;

  const SockCard({
    Key? key,
    required this.imageUrl,
    required this.startColor,
    required this.endColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const DetailPage(),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                startColor,
                endColor,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: (Colors.grey[350]!),
                blurRadius: 10,
                offset: const Offset(5, 10),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Center(
              child: Image.asset(imageUrl),
            ),
          ),
        ),
      ),
    );
  }
}