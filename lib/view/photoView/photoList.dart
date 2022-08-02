import 'package:api_integrate_model/services/photo_service.dart';
import 'package:api_integrate_model/view/homepg.dart';
import 'package:flutter/material.dart';

import 'photo_detail.dart';

class PhotoApi extends StatefulWidget {
  const PhotoApi({Key? key}) : super(key: key);

  @override
  State<PhotoApi> createState() => _PhotoApiState();
}

class _PhotoApiState extends State<PhotoApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Api"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }),
                  );
                },
                icon: const Icon(Icons.person)),
          )
        ],
      ),
      body: FutureBuilder(
          future: getPhoto(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Hero(
                      tag: snapshot.data[index].id,
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PhotoDetail(
                              data: snapshot.data[index],
                            );
                            // data: snapshot.data[index]
                          }));
                        },
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(snapshot.data[index].thumbnailUrl),
                        ),
                        title: Text(snapshot.data[index].title),
                      ),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }),
    );
  }
}
