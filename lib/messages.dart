import 'package:get/get.dart';

class Messages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>{
    'en_US':{
      'hello':'Hello US'
    },
    'vi_VI':{
      'hello': 'Xin Chao'
    }
  };

}