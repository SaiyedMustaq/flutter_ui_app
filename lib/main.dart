import 'package:flutter/material.dart';
import 'package:flutter_ui_app/pagination/Pagination.dart';
import 'package:flutter_ui_app/plantapp/plant_home_screen.dart';

import 'data_table/data_table_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DataTableTabView(title: 'Flutter Data Table'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlantAppHome()),
              );
            },
            child: Text('Plant App '),
          ),
          RaisedButton(
            color: Colors.red,
            colorBrightness: Brightness.dark,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaginationHome()));
            },
            child: Text('Pagination'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('UI 3'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('UI 4'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('UI 5'),
          ),
        ],
      ),
    );
  }
}
