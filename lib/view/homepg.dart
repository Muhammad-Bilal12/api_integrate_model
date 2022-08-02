import 'package:api_integrate_model/view/data_screen.dart';
import 'package:api_integrate_model/view/photoView/photoList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../services/user_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Api Integrate"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return PhotoApi();
                    }),
                  );
                },
                icon: const Icon(Icons.photo)),
          )
        ],
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DataScreen(data: snapshot.data[index]);
                        }));
                      },
                      title: Text(snapshot.data[index].name),
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
