import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/screens.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset('assets/images/image1.png')),
              Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/back.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  )),
              Positioned(
                  top: 30,
                  right: 30,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/note.svg',
                      color: Colors.white,
                      fit: BoxFit.scaleDown,
                    ),
                  )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Unravel mysteries\nof the Maldives',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Gellix',
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 65,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const PersonDetails()),
                                        );
                                      },
                                      child: Image.asset(
                                          'assets/images/person2.png')),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Keanu Carpent May 17 · 8 min read',
                                    style: TextStyle(
                                        fontFamily: 'Gellix',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: Color(0xFF9397A0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Just say anything, George, say what ever's\nnatural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it's 8:00. Hey,\nMcFly, I thought I told you never",
                            style: TextStyle(
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
