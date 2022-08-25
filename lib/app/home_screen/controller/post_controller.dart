import 'package:demo_api/app/home_screen/model/post_models.dart';
import 'package:get/get.dart';
import '../../service/dio_service.dart';

class PostController extends GetxController {
  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

  var url = 'https://jsonplaceholder.typicode.com/posts';

  RxList<PostModel> posts = RxList();

  getPosts() async {
    var response = await DioService().getMethod(url: url);

    if (response.statusCode == 200) {
      response.data.forEach(
        (element) {
          posts.add(PostModel.fromJson(element));
        },
      );
    }
  }
}
