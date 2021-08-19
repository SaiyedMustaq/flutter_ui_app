import 'package:flutter/material.dart';

import 'feature_lant_card.dart';

class FeaturePlan extends StatelessWidget {
  const FeaturePlan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantcard(
            image: "assets/image/pot4.jpg",
            featurePlancPress: () {},
          ),
          FeaturePlantcard(
            image: "assets/image/pot2.jpg",
            featurePlancPress: () {},
          )
        ],
      ),
    );
  }
}
