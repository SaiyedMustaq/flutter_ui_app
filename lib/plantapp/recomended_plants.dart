import 'package:flutter/material.dart';
import 'package:flutter_ui_app/plantapp/details/plant_details.dart';
import 'package:flutter_ui_app/plantapp/recommended_plant_card.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommedndedPlantCard(
            country: 'Russin',
            image: 'assets/image/pot4.jpg',
            price: 458,
            title: 'SAMANTHA',
            cardPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlantDetails()));
            },
          ),
          RecommedndedPlantCard(
            country: 'Russin',
            image: 'assets/image/pot2.jpg',
            price: 458,
            title: 'SAMANTHA',
            cardPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlantDetails()));
            },
          ),
          RecommedndedPlantCard(
            country: 'Russin',
            image: 'assets/image/pot3.jpg',
            price: 458,
            title: 'SAMANTHA',
            cardPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PlantDetails()));
            },
          ),
        ],
      ),
    );
  }
}
