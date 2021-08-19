import 'package:flutter/material.dart';

import '../plant_constant.dart';
import 'left_menu.dart';

class ImageWithLeftMenu extends StatelessWidget {
  const ImageWithLeftMenu({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                    Spacer(),
                    DetailsLeftMenu(
                      svgUrl: 'assets/svg/sun.svg',
                    ),
                    DetailsLeftMenu(
                      svgUrl: 'assets/svg/thermometer.svg',
                    ),
                    DetailsLeftMenu(
                      svgUrl: 'assets/svg/water-drop.svg',
                    ),
                    DetailsLeftMenu(
                      svgUrl: 'assets/svg/wind.svg',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29)),
                  ],
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/pot3.jpg"))),
            )
          ],
        ),
      ),
    );
  }
}
