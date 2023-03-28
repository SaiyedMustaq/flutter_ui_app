import 'package:flutter/material.dart';

import '../plant_constant.dart';
import 'image_with_left_menu.dart';
import 'title_and_price.dart';

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWithLeftMenu(size: size),
          TitleAndPrice(price: 458, title: "Angelica", country: "Russia"),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 60,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Buy',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Descreption',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
