import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalDetailCard extends StatelessWidget {
  const VerticalDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: const Color(0xFF3E3A6D),
        ),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration:  BoxDecoration(
                color: const Color(0xFFDB61A1),
                  borderRadius: BorderRadius.circular(19),
                  image: const DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image:
                          AssetImage('assets/images/img_saly25.png'))),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Introduction Design Graphic for Beginner',
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),

                  ),
                  SizedBox(height:6,),
                  Row(
                    children: [
                      Text(
                        '12 Minutes',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8c8c8c),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFDB61A1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          child: Text(
                            'Free',
                            style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            ),
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
