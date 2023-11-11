import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'location_card_widget.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFFFFFF),
      title: Image.asset(
        'assets/images/logo.png',
        height: 31,
        width: 77,
      ),
      actions: [
        Container(
          padding: const EdgeInsets.all(10),
          child: const LocationCardWidget(),
        ),
        Container(
          margin: const EdgeInsets.only(right: 21),
          child: SvgPicture.asset('assets/svgs/search.svg'),
        )
      ],
      automaticallyImplyLeading: false,
    );
  }
}
