import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Container(
        child: Text("Hello world"),
      ),
      drawer: MyDrawer(),
    );
  }
}
