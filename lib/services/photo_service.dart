import 'package:api_integrate_model/model/photo_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

getPhoto() async {
  var url = "https://jsonplaceholder.typicode.com/photos";
  var response = await http.get(Uri.parse(url));

  var jsonData = convert.jsonDecode(response.body);
  // print(jsonData);

  List photoList = [];

  for (var i in jsonData) {
    photoList.add(PhotoModel.fromJson(i));
  }

  print(photoList[0].title);

  return photoList;
}
