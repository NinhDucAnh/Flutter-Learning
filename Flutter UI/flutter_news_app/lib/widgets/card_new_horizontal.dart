import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/screens.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardNewsHorizontal extends StatelessWidget {
  final String newsTitle;
  final String authorAvatar;
  final String authorName;
  final String datePost;
  final String image;

  const CardNewsHorizontal(
      {super.key,
      required this.newsTitle,
      required this.authorAvatar,
      required this.authorName,
      required this.datePost,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child:  InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewsDetailsScreen()),
          );
        },
        child: Container(
          height: 304,
          width: 255,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsTitle,
                style: const TextStyle(
                    fontFamily: 'Gellix',
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(authorAvatar),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            authorName,
                            style: const TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF19202D),
                                fontSize: 12),
                          ),
                          Text(
                            datePost,
                            style: const TextStyle(
                                fontFamily: 'Gellix',
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9397A0),
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFF5F4),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    child: SvgPicture.asset('assets/images/arrow.svg',fit: BoxFit.scaleDown,),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
