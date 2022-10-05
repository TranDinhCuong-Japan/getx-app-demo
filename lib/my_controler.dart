import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/api.dart';
import 'package:getx/product_model.dart';

class MyControler extends GetxController{
  
  // var productsList = <Producs>[].obs;
  List<Producs> productsList =[];

  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async{
    var products = await ApiGetX.fetchProducts();
    if(products.isNotEmpty){
      productsList = products;
      update();
    }else{
      print("null");
    }
  }

}