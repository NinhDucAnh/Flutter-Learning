import 'package:flutter/material.dart';
import 'package:flutter_news_app/widgets/icon_text.dart';

class PostNewsVertical extends StatelessWidget {
  const PostNewsVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/temple.png'),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text('News Politics',style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Gellix',
                  color: Color(0xFF9397A0),
                ),),
                const SizedBox(height: 10,),
                const Text("Iran's raging protests\nFifth Iranian paramilitary me...",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gellix',
                  color: Color(0xFF19202D),
                ),),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    IconText(text: '11th May', iconPath: 'assets/images/lich.svg'),
                    SizedBox(width: 40,),
                    IconText(text: '10:15 am', iconPath: 'assets/images/clock.svg'),
                  ],
                )
              ],
            )

          ],
      ),
    );
  }
}
