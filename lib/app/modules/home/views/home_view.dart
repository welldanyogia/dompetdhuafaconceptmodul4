import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'widget/appbar_widget.dart';
import 'widget/grid_widget.dart';
import 'widget/image_widget.dart';
import 'widget/news.dart';
import 'widget/wallet_card_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: const AppbarWidget(),
      body: Stack(
        children: [
          ImageWidget(),
          const GridWidget(),
          const WalletCardWidget(),
          NewsWidget()
        ],
      ),
      // bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
