import 'package:flutter/material.dart';
import 'package:flutter_ui_app/plantapp/plant_constant.dart';

class FeaturePlantcard extends StatelessWidget {
  const FeaturePlantcard({
    @required this.image,
    Key key,
    @required this.featurePlancPress,
  }) : super(key: key);

  final String image;
  final Function featurePlancPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          top: kDefaultMargin / 2,
          bottom: kDefaultMargin,
          left: kDefaultMargin,
          right: kDefaultMargin),
      width: size.width * 0.8,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.lime[50],
        image: DecorationImage(image: AssetImage(image)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
