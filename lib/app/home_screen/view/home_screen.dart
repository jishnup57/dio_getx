import 'package:demo_api/app/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/post_controller.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);

  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Restful Api Dio'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: postController.posts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                height: 60,
                margin: const EdgeInsets.all(10),
                width: 60,
                decoration: BoxDecoration(color: MyColors.greyColor),
                child: Center(
                  child: Text('${index + 1}'),
                ),
              ),
              title: Text(postController.posts[index].title),
              subtitle: Text(
                postController.posts[index].body,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
