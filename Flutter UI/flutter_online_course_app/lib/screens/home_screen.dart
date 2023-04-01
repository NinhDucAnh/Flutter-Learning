import 'package:flutter/material.dart';
import 'package:flutter_online_course_app/screens/screens.dart';
import 'package:flutter_online_course_app/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Online",
                style: GoogleFonts.roboto(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CourseDetailScreen(),
                      ));
                },
                child: Text(
                  "Master Class",
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 349,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return const CardHorizontal(
                    courseHeadLine: 'Recommended',
                    courseTitle: 'UI/UX DESIGNER\nBEGINNER',
                    courseImage: 'assets/images/img_saly10.png',
                    starColor: 0xFF9288E4,
                    endColor: 0xFF534EA7);
              },
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Free online class",
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "From over 80 Lectures",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: const Color(0xFF9C9A9A),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const CardVertical(
                courseDuration: '8 hour',
                courseImage: 'assets/images/img_saly24.png',
                courseRating: 3.0,
                courseTitle: 'Flutter Developer',
              );
            },
          )
        ],
      )),
    );
  }
}
