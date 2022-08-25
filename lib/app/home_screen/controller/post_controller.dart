import 'package:demo_api/app/home_screen/model/post_models.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  String apiLink = 'https://jsonplaceholder.typicode.com/posts';
  RxList<PostModel> posta = RxList();
}
