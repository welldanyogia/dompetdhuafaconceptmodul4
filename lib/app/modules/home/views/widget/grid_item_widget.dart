import 'package:flutter/material.dart';

class GridItemWidget extends StatelessWidget {
  const GridItemWidget({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final images = [
      'donation.png',
      'zakat.png',
      'wakaf.png',
      'kurban.png',
      'telepon.png',
      'listrik.png',
      'pdam.png',
      'pulsa.png',
    ];
    return Container(
      margin: const EdgeInsets.only(left: 37, top: 30),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color(0xffE6E9ED)),
        ),
        child: TextButton(
          onPressed: () {},
          child: Image.asset('assets/images/${images[index]}'),
        ),
      ),
    );
  }
}
