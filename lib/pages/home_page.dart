import 'package:flutter/material.dart';
import 'package:flutterapp/models/catalog.dart';
import 'package:flutterapp/widgets/drawer.dart';
import 'package:flutterapp/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => CatalogModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummylist[index]);
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
