import 'package:flutter/material.dart';
import '../model/content.dart';
import '../view_model/content_viewmodel.dart';

// ignore: must_be_immutable
class ContentPage extends StatelessWidget {
  ContentPage({Key? key}) : super(key: key);

  final ContentViewModel contentViewModel = ContentViewModel();

  List<Content> contents = [];
  Future getContents() async {
    contents = (await contentViewModel.fetchContents())!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Content List"),
      ),
      body: FutureBuilder(
        future: getContents(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text("LOADING"),
            );
          } else {
            if (contents.isEmpty) {
              return const Center(
                child: Text("NO DATA"),
              );
            }
            return ListView.builder(
              itemCount: contents.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(contents[index].name),
                subtitle: Text(contents[index].detail),
              ),
            );
          }
        },
      ),
    );
  }
}
