import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  const IconText({Key? key, required this.text, required this.iconPath}) : super(key: key);
  final String text;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        SvgPicture.asset(iconPath,fit: BoxFit.scaleDown),
        const SizedBox(width: 15,),
        Text(text,style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: 'Gellix',
          color: Color(0xFF9397A0),
        ),)
      ],
    );
  }
}
