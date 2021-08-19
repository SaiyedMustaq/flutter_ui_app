import 'package:flutter/material.dart';
import 'package:flutter_ui_app/plantapp/plant_constant.dart';

class RecommedndedPlantCard extends StatelessWidget {
  const RecommedndedPlantCard(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.country,
      @required this.price,
      this.cardPress})
      : super(key: key);
  final String image, title, country;
  final int price;
  final Function cardPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Image.asset(
              image,
              height: 120,
              width: 130,
            ),
          ),
          GestureDetector(
            onTap: cardPress,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)),
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "$title \n",
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
