import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ScenesCard extends StatelessWidget {
  final String title;
  final HexColor color1;
  final HexColor color2;

  const ScenesCard({Key? key, required this.title, required this.color1, required this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      // margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: const [0.7, 1],
              colors: [color1, color2]),
          borderRadius: BorderRadius.circular(15),
          // color: color1
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            "assets/surface1.svg",
            color: Colors.white,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
