import 'package:JSONDEMO/models/contact-model.dart';
import 'package:JSONDEMO/models/friend-model.dart';
import 'package:JSONDEMO/models/photo-model.dart';
import 'package:JSONDEMO/models/post-model.dart';
import 'package:JSONDEMO/models/product-model.dart';
import 'package:JSONDEMO/services/app-client.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'You call API'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Future<PostModel> postModel;
  Future<FriendModel> friendModel;
  Future<ProductModel> productModel;
  Future<ContactModel> contactModel;
  Future<PhotoLists> photoLists;

  @override
  void initState() {
    super.initState();
    photoLists = loadPhotoData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(),
          SliverGrid(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return FutureBuilder(
                future: photoLists,
                builder: (context, AsyncSnapshot<PhotoLists> snapshot) {
                  print("dataaa ${snapshot.hasData} gg");
                  if (snapshot.hasData) {
                    return GridView.builder(
                      itemCount: snapshot.data.photos.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        PhotoModel photoModel = snapshot.data.photos[index];
                        return GridTile(
                          child: Image.network(photoModel.thumbnailUrl),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("Error Occure");
                  }
                  return CircularProgressIndicator();
                },
              );
            }),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
