import 'package:flutter/material.dart';
import 'package:flutter_ui_app/plantapp/plant_constant.dart';

class PaginationHome extends StatefulWidget {
  @override
  _PaginationHomeState createState() => _PaginationHomeState();
}

class _PaginationHomeState extends State<PaginationHome> {
  ScrollController controller;
  List<String> items = new List.generate(10, (index) => 'Hello $index');

  @override
  void initState() {
    super.initState();
    controller = new ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.extentAfter < 500) {
      setState(() {
        items.addAll(new List.generate(10, (index) => 'Inserted$index'));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          controller: controller,
          itemCount: items.length,
          itemBuilder: (ctx, position) => builrListViewItem(items, position)),
    );
  }

  buildBody() {
    return ListView.builder(
        controller: controller,
        itemCount: 100,
        itemBuilder: (ctx, position) =>
            Text('hello', style: TextStyle(color: Colors.black)));
  }

  builrListViewItem(List<String> items, int position) {
    Container(
      height: 50,
      color: kPrimaryColor,
      child: Text(
        'hello',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
