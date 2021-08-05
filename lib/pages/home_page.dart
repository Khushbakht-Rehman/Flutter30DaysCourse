import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/models/catalog.dart';
import 'package:flutterapp/widgets/drawer.dart';
import 'package:flutterapp/widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(productsData);
  }

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
