import 'package:flutter/material.dart';

class DataTableTabView extends StatefulWidget {
  static const String dataTableHomeRoute = '/dataTable';

  DataTableTabView({Key key, String title}) : super(key: key);
  @override
  _DataTableTabViewState createState() => _DataTableTabViewState();
}

class _DataTableTabViewState extends State<DataTableTabView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  String title = "Home";

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: TabBarView(
        children: <Widget>[
          FirstTab(title: ""),
          SecondTab(
            title: "Page Two",
          ),
        ],
      ),
      // bottomNavigationBar: Material(
      //   color: Colors.purple,
      //   child: TabBar(
      //     onTap: (indedx) {
      //       if (indedx == 0) {
      //         setState(() {
      //           title = "Home";
      //         });
      //       } else if (indedx == 1) {
      //         setState(() {
      //           title = "Tab Two";
      //         });
      //       } else if (indedx == 2) {
      //         setState(() {
      //           title = "Tab Three";
      //         });
      //       }
      //     },
      //     indicatorColor: Colors.blue,
      //     unselectedLabelColor: Colors.grey,
      //     tabs: <Widget>[
      //       Tab(
      //         icon: Icon(Icons.favorite_border),
      //         text: "ONE",
      //       ),
      //       Tab(
      //         icon: Icon(Icons.favorite),
      //         text: "TWO",
      //       ),
      //       Tab(
      //         icon: Icon(Icons.add_box),
      //         text: "THREE",
      //       ),
      //     ],
      //     controller: _tabController,
      //   ),
      // ),
    ));
  }
}

class FirstTab extends StatefulWidget {
  final String title;
  FirstTab({this.title});
  @override
  FirstTabState createState() => FirstTabState();
}

class FirstTabState extends State<FirstTab>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 50.0,
            child: new TabBar(
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.blue,
              tabs: [
                Tab(text: "ONE"),
                Tab(text: "TWO"),
                Tab(text: "THREE"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Text("TAB ONE CONTENT"),
            Text("TAB TWO CONTENT"),
            Text("TAB THREE CONTENT"),
          ],
        ),
      ),
    );
  }
}

class SecondTab extends StatelessWidget {
  final String title;

  SecondTab({this.title});

  final mySnackBar = SnackBar(
    content: Text(
      "Hello There!",
      style: TextStyle(color: Colors.white),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
    );
  }
}

class ThirdTab extends StatelessWidget {
  final String title;

  ThirdTab({this.title});

  final mySnackBar = SnackBar(
    content: Text(
      "Hello There!",
      style: TextStyle(color: Colors.white),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
    );
  }
}
