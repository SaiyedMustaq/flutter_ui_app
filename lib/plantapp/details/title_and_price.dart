import 'package:flutter/material.dart';

import '../plant_constant.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    @required this.price,
    @required this.country,
    @required this.title,
    Key key,
  }) : super(key: key);
  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.2),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '$title\n',
                style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: '$country\n',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: kPrimaryColor,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ]),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headline5.copyWith(
                color: kPrimaryColor,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
