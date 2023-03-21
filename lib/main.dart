import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'musicapp/music_main.dart';
import 'plantapp/plant_home_screen.dart';

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
          textTheme: GoogleFonts.saralaTextTheme(Theme.of(context).textTheme)),
      home: MusicMain(),
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
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlantAppHome()),
              );
            },
            child: Text('Plant App '),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MusicMain()));
            },
            child: Text('Music App'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('UI 4'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('UI 5'),
          ),
        ],
      ),
    );
  }
}
