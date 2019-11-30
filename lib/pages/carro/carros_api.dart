import 'package:carros/pages/carro/carro.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CarrosApi {
  static Future<List<Carro>> getCarros() async {
    // try {
      var url = 'http://carros-springboot.herokuapp.com/api/v1/carros';

      var response = await http.get(url);

      String json = response.body;

      List mapResponse = convert.json.decode(json);

      return [];
    
    // } catch (error) {
    //   print(error);
    // }
  }
}
