import 'package:api_tut/post.dart';
import 'package:flutter/material.dart';

import './api_service.dart';
import 'model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api tut'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ApiServices.getContent(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (snapshot.hasData) {
              List<ModelContent> result = snapshot.data;
              return ListView.builder(
                itemBuilder: (context, index) => Posts(
                  userid: result[index].userId.toString(),
                  id: result[index].id.toString(),
                  title: result[index].title!,
                  posts: result[index].body!,
                ),
                itemCount: result.length,
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("An error Occured"),
              );
            }
          }
          return Container();
        },
      ),
    );
  }
}
