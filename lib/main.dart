import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/messages.dart';
import 'package:getx/my_controler.dart';

void main() {
  runApp(GetMaterialApp(
    home: GetXTutorial(),
  ));
}

class GetXTutorial extends StatelessWidget {
GetXTutorial({Key? key}) : super(key: key);

// MyControler productsControler = Get.put(MyControler());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX tutorial")),
      body: GetBuilder<MyControler>(
        init: MyControler(),
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.productsList.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text(controller.productsList[index].title.toString())
                
              );
            },
          );
        }
      )
    );
  }
}