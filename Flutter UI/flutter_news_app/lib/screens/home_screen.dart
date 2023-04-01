import 'package:flutter/material.dart';
import 'package:flutter_news_app/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child:ListView(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/avatar.png'),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black
                          ),
                        ),
                        Text(
                          'Monday, 3 October',
                          style: TextStyle(
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF9397A0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  height: 49,
                  width: 315,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        )
                      ]
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:   [
                      const Padding(
                        padding: EdgeInsets.only(left: 13, top:17, bottom: 18),
                        child:  Text(
                            'Search for article',
                            style: TextStyle(fontFamily: 'Gellix',
                                fontWeight:FontWeight.w400,
                                color: Color(0xFFA7A7A7),
                                fontSize: 12
                            )
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 47,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5474FD),
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child:  SvgPicture.asset('assets/images/search.svg',fit: BoxFit.scaleDown,),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#Health',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9397A0),
                      ),
                    ),
                    Text(
                      '#Sports',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9397A0),
                      ),
                    ),
                    Text(
                      '#Music',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9397A0),
                      ),
                    ),
                    Text(
                      '#Technology',
                      style: TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF9397A0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                SizedBox(
                  height: 304,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const  CardNewsHorizontal(image: 'assets/images/wallpaper.png',
                        authorAvatar: 'assets/images/avatar2.png',
                        authorName: 'Sang Dong-Min',
                        datePost: 'Sep 9, 2022',
                        newsTitle: 'Feel the thrill on the only\nsurf simulator in Maldives 2022'
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const  [
                    Text(
                      'Short For You',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5474FD)
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 88,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => const CardShortNewsHorizontal(image: 'assets/images/image_news.png',newsTitle: ' Top Trending\n Islands in 2022', viewNumber: '40,999'),
                  ),
                )

              ],
            ),
          ),
      ),
    );
  }
}
