import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardHorizontal extends StatelessWidget {
  final String courseHeadLine;
  final String courseTitle;
  final String courseImage;
  final int starColor;
  final int endColor;

  const CardHorizontal({super.key, required this.courseHeadLine, required this.courseTitle, required this.courseImage, required this.starColor, required this.endColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              colors: <Color>[
                Color(starColor),
                Color(endColor)
              ],
              begin: Alignment.topLeft,
              end: const AlignmentDirectional(1,0.0 ),
            )
        ),
        child: Stack(
          children: [
            Positioned(
              left: 11,
                top: 15,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 39,
                  decoration: BoxDecoration(
                    color: const Color(0xFFAFA8EE),
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Text(courseHeadLine,
                    style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                )
            ),
            Positioned(
                left: 14,
                top: 80,
                child: Text(
                  courseTitle,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                )
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(courseImage,scale: 2,)
                ),
          ],
        ),
      ),
    );
  }
}
