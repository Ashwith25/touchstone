// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:touchstone/bedroom.dart';

class PanelCard extends StatelessWidget {
  final title;
  final count;
  final svg;
  const PanelCard({Key? key, this.title, this.count, this.svg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const BedRoom()));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(svg, height: 50),
              const SizedBox(
                height: 20,
              ),
              FittedBox(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 20,
                        // fontWeight: FontWeight.w900,
                      ),
                  // style: const TextStyle(
                  //     fontWeight: FontWeight.normal, fontSize: 20),
                ),
              ),
              Text(
                "$count Light${int.parse(count) < 2 ? '' : 's'}",
                style: TextStyle(color: HexColor("FFA939")),
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 1,
      ),
    );
  }
}
