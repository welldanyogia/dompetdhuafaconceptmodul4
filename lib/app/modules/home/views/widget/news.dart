import 'package:dompetdhuafaconceptmodul4/app/modules/home/views/widget/news_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class NewsWidget extends StatelessWidget {
  final homeController = Get.find<HomeController>();
  // final Widget newsItem;
  NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 480),
        child: Column(
          children: [
            Text('News'),
            Obx(() {
              if (homeController.isLoading.value) {
// Display a progress indicator while loading
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.secondary),
                  ),
                );
              } else {
// Display the list of articles
                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: homeController.articles.length,
                    itemBuilder: (context, index) {
                      var article = homeController.articles[index];
                      return NewsItemWidget(article: article);
                    },
                  ),
                );
              }
            }),
          ],
        ));
  }
}
