import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../plant_constant.dart';

class DetailsLeftMenu extends StatelessWidget {
  const DetailsLeftMenu({Key key, @required this.svgUrl}) : super(key: key);

  final String svgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22)),
            BoxShadow(
                offset: Offset(-15, -15), blurRadius: 22, color: Colors.white)
          ],
          borderRadius: BorderRadius.circular(6)),
      child: SvgPicture.asset(
        svgUrl,
        color: kPrimaryColor,
      ),
    );
  }
}
