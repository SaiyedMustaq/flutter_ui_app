import 'package:flutter/material.dart';
import 'package:flutter_ui_app/plantapp/plant_constant.dart';
import 'package:flutter_ui_app/plantapp/recomended_plants.dart';
import 'bottomnavigation.dart';
import 'feature_plan.dart';
import 'title_with_more_button.dart';
import 'header_with_search.dart';

class PlantAppHome extends StatelessWidget {
  static const String plantHomeRoute = '/plantAppHome';

  PlantAppHome({Key key, String title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: PlantHomeBody(),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      backgroundColor: kPrimaryColor,
    );
  }
}

class PlantHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///provide full height of screen
    Size size = MediaQuery.of(context).size;
    // scrollview
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeTitle(size: size),
          TitleWithMoreButton(title: 'Recomended', morePress: () {}),
          RecomendedPlants(),
          TitleWithMoreButton(title: 'Featured Plants', morePress: () {}),
          FeaturePlan(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
