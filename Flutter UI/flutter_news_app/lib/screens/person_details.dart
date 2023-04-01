import 'package:flutter/material.dart';
import 'package:flutter_news_app/widgets/widgets.dart';

class PersonDetails extends StatelessWidget {
  const PersonDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/ellybyers.png'),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Elly Byers',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Author & Writer',
                            style: TextStyle(
                              color: Color(0xFF19202D),
                              fontFamily: 'Gellix',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 109,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF5474FD),
                  ),
                  child: const Center(
                      child: Text('Following',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ))),
                )
              ],
            ),
            const SizedBox(height: 20,),
            const Text(
              'Every piece of chocolate I ever ate is getting back at me..\ndesserts are very revengeful..',
              style: TextStyle(
                color: Color(0xFF9397A0),
                fontFamily: 'Gellix',
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 95,
              decoration: BoxDecoration(
                color: const Color(0xFF19202D),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DoubleTextVertical(number: '54.21k', category: 'Followers'),
                  SizedBox(height:38,child: VerticalDivider(color: Color(0xFFC1D4F9),)),
                  DoubleTextVertical(number: '2.11k', category: 'Followers'),
                  SizedBox(height:38,child: VerticalDivider(color: Color(0xFFC1D4F9),)),
                  DoubleTextVertical(number: '36.40k', category: 'Followers'),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const  [
                Text(
                  "Elly's Post",
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
            const SizedBox(height: 30,),
            SizedBox(
              height: 216,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                  itemBuilder: (context, index) => const PostNewsVertical(),
              ),
            ),
            const SizedBox(height: 15,),
            const Text('Popular From Elly',style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF19202D)
            ),),
            const SizedBox(height: 15,),
            SizedBox(
              height: 143,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(padding: const EdgeInsets.only(left: 10), child:Image.asset('assets/images/house.png')),
              ),
            )
          ],
        ),
      )),
    );
  }
}
