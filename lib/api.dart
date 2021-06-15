import 'package:http/http.dart' as http;
import 'dart:convert';

class Api{

  Future<Map<String, dynamic>> fetch() async {
  var token = "c06c49f41db6c42f455881b7825ede48";
  var url = "http://apiadvisor.climatempo.com.br/api/v1/weather/locale/5659/current?token=" + token;
  //var url2 = "http://apiadvisor.climatempo.com.br/api-manager/user-token/" + token + "/locales";
  //var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
  //var load = 'localeId[]=5659';
  //var response = await http.put(Uri.parse(url2), headers: headers, body: load);
  //print(response.body);
  var response2 = await http.get(Uri.parse(url));
  //var json = jsonDecode(response.body);
  var json2 = jsonDecode(response2.body);
  return json2;
  }
}