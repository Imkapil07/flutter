import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widget/item_widget.dart';
import 'package:flutter/services.dart';
import '../widget/drawer.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    catalogModel.item = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
        setState(() {});
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: catalogModel.item.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: catalogModel.item[index],
              );
            }),
      ),
      drawer: Mydrawer(),
    );
  }
}
