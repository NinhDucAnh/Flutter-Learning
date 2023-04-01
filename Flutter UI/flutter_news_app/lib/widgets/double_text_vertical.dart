import 'package:flutter/material.dart';

class DoubleTextVertical extends StatelessWidget {
  const DoubleTextVertical({Key? key, required this.number, required this.category}) : super(key: key);
  final String number;
  final String category;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(number,style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'Gellix',
          color: Colors.white,
        ),),
        const SizedBox(height: 10,),
        Text(category,style: const TextStyle(
          fontFamily: 'Gellix',
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Colors.white
        ),)

      ],
    );
  }
}
