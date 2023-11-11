import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../model/news_model.dart';

class HomeController extends GetxController {
  final ImagePicker imagePicker = ImagePicker();
  final pickedImage = Rx<File?>(null);
  // static const String _category = 'business';
  // static const String _country = 'us'; //us maksudnya United States ya
  RxList<Article> articles = RxList<Article>([]);
  RxBool isLoading = false.obs; // Observable boolean for loading state
  @override
  onInit() async {
    super.onInit();
    await fetchArticles();
  }

  Future<void> fetchArticles() async {
    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=9a9ae921f47740ed8d4d87452bf3018e"));

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        NewsModel news = NewsModel.fromJson(jsonData);

        articles.assignAll(news.articles as Iterable<Article>);
      } else {
        throw Exception("error when request data");
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading.value = false; // Set loading state to false when done
    }
  }

  Future<void> pickImage() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.camera);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
        // imagefiles.add(pickedImage.value!);
      }
    } catch (e) {
      print('error while picking file.');
    }
  }

  Future<void> pickImageGalery() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.gallery);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
        // imagefiles.add(pickedImage.value!);
      }
    } catch (e) {
      print('error while picking file.');
    }
  }
}
