import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key, required this.data}) : super(key: key);

  final data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name : ${data.name}",
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("ID : ${data.id}"),
            Text("UserName : ${data.username}"),
            Text("Email : ${data.email}"),
            Text("Phone : ${data.phone}"),
            Text("Website : ${data.website}"),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("CompanyName : ${data.company.name}"),
                  Text("CompanyName : ${data.company.bs}"),
                  Text("CompanyName : ${data.company.catchPhrase}"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Street : ${data.address.street}"),
                  Text("Suite : ${data.address.suite}"),
                  Text("ZipCode : ${data.address.zipcode}"),
                  Text("City : ${data.address.city}"),
                  Text("Geograpghy Data : ${data.address.geo.lat}"),
                  Text("Geograpghy Data : ${data.address.geo.lng}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*

 {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }


 */