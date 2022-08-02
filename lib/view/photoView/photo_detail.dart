import 'package:flutter/material.dart';

class PhotoDetail extends StatelessWidget {
  const PhotoDetail({Key? key, required this.data}) : super(key: key);
  final data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Hero(
              tag: data.id,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(data.url),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              data.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
