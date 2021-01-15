import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projeto_sales_telecom_001/app/login/model/const_api.dart';
import 'package:projeto_sales_telecom_001/app/login/model/response_api.dart';
import 'package:projeto_sales_telecom_001/app/login/model/usuario_model.dart';
import 'package:sales_telecom012021/app/login/model/response_api.dart';

class LoginApi {
  static Future<ResponseApi<UsuariosModel>> login(
      String email, String password) async {
    try {
      Map<String, String> headers = {'Content-Type': 'application/json'};
      Map params = {
        "LOGIN": email,
        "SENHA": password,
      };
      String paramentros = json.encode(params);

      var response = await http.post(ConstsApi.URL_SESSION,
          body: paramentros, headers: headers);

      Map mapResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        final user = UsuariosModel.fromJson(mapResponse);
        user.save();

        return ResponseApi.ok(user);
      }

      return ResponseApi.error(mapResponse['error'][0]);
    } catch (error) {
      return ResponseApi.error('Problema na conexão!');
    }
  }
}
