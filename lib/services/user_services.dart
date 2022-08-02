import 'package:api_integrate_model/model/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

getData() async {
  var url = "https://jsonplaceholder.typicode.com/users";
  var response = await http.get(Uri.parse(url));

  var jsonData = convert.jsonDecode(response.body);
  // print(jsonData);

  List userData = [];

  for (var i in jsonData) {
    userData.add(UserModel.fromJson(i));
  }

  // print(userData[0].name);

  return userData;
}
