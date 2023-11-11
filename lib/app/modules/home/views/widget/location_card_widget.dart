import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationCardWidget extends StatelessWidget {
  const LocationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffffffff),
      margin: const EdgeInsets.only(right: 22),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Color(0xffE6E9ED))),
      child: SizedBox(
        height: 32,
        width: 148,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: SvgPicture.asset('assets/svgs/location.svg'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 22),
              child: const Text(
                'Dau, Malang',
                style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
