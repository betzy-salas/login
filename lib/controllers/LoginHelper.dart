import 'package:http/http.dart' as http;
import 'package:login/constants/constants_text.dart';
import 'package:login/models/DataUsers.dart';
import 'package:login/models/Users.dart';
import 'dart:convert';
import 'package:login/objects/DataResponse.dart';
import 'package:login/objects/Token.dart';

class LoginHelper {
  http.Response responseServer;
  DataResponse dataResponse;
  DataUsers dataUsers;
  Future dataLogin;
  String token;

  Future<DataUsers> getLogin(
      String userId, String password, String language) async {
    String body = setDataUser(userId, password);

    responseServer = await http.post(URL_LOGIN_TOKEN,
        headers: {"Content-Type": "application/json"}, body: body);

    if (responseServer.statusCode == 200) {
      Map<String, dynamic> jsonData = new Map<String, dynamic>.from(
          json.decode(utf8.decode(responseServer.bodyBytes)));
      token = jsonData['token'];
      if (token == null) {
        var valueMap = jsonData['message'];
        dataResponse = DataResponse(valueMap);
        dataLogin = getGreetingError(dataResponse.getResponseLogin);
      } else {
        dataResponse = DataResponse(token);
        dataLogin = getGreeting(token, language);
      }
    } else {
      throw Exception("Falló la conexión");
    }
    return dataLogin;
  }

  Future<DataUsers> getGreetingError(String messageError) async {
    dataUsers = new DataUsers.fromText(messageError, true);

    return dataUsers;
  }

  Future<DataUsers> getGreeting(String token, String language) async {
    String body = setToken(token, language);

    responseServer = await http.post(URL_SET_SESSION,
        headers: {"Content-Type": "application/json"}, body: body);

    if (responseServer.statusCode == 200) {
      Map<String, dynamic> jsonData = new Map<String, dynamic>.from(
          json.decode(utf8.decode(responseServer.bodyBytes)));
      var valueMap = jsonDecode(jsonData["dataUser"]);
      dataUsers = new DataUsers.fromJson(valueMap, false);
    } else {
      throw Exception("Falló la conexión");
    }
    return dataUsers;
  }

  String setDataUser(String userId, String password) {
    Users dataUser = new Users(userId, password);
    String body = jsonEncode(dataUser);
    return body;
  }

  String setToken(String token, String language) {
    Token dataToken = new Token(token, language);
    String body = jsonEncode(dataToken);
    return body;
  }
}
