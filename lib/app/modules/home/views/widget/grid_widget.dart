import 'package:flutter/material.dart';

import 'grid_item_widget.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30, top: 260),
      color: const Color(0xffFFFFFF),
      child: GridView.count(
        crossAxisCount: 4,
        children: List.generate(8, (index) {
          return GridItemWidget(index: index,);
        }),
      ),
    );
  }
}