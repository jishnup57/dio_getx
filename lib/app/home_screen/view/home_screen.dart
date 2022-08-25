import 'package:demo_api/app/util/colors.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Restful Api Dio'),
      ),
      body: ListView.builder(
        itemCount: 10,
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
            title: const Text('Dummy Data'),
            subtitle: const Text(
              'Sub title',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          );
        },
      ),
    );
  }
}
