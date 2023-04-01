import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardShortNewsHorizontal extends StatelessWidget {
  final String newsTitle;
  final String viewNumber;
  final String image;
  const CardShortNewsHorizontal({Key? key, required this.newsTitle, required this.viewNumber, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(9),
      child: SizedBox(
        height: 88,
        width: 208,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(image),
                SvgPicture.asset('assets/images/play.svg',fit: BoxFit.scaleDown,)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(
                  newsTitle,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/view.svg',fit: BoxFit.scaleDown,),
                    const SizedBox(width: 5,),
                    Text(
                      viewNumber,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9397A0),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
