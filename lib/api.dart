import 'package:getx/product_model.dart';
import 'package:http/http.dart' as http;

class ApiGetX{
  
  static var client= http.Client();

  static Future<List<Producs>> fetchProducts() async{
   var reponse = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if(reponse.statusCode==200){
      return producsFromJson(reponse.body);
    }else{
      throw Exception('Failed to  load product');
    }
  }
}