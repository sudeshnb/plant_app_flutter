import 'package:flutter/material.dart';
import 'package:uidesign04/core/color.dart';
import 'package:uidesign04/core/space.dart';
import 'package:uidesign04/core/text_style.dart';
import 'package:uidesign04/data/plants.dart';
import 'package:uidesign04/pages/details_page.dart';

class PlantItemCard extends StatelessWidget {
  final Plant plant;
  const PlantItemCard({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (builder) => DetailsPage(plant: plant)));
      },
      child: Container(
        height: 400.0,
        margin: EdgeInsets.only(right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              plant.images[0],
              height: 250.0,
            ),
            SpaceVH(height: 20.0),
            Text(
              plant.name,
              style: headline2,
            ),
            SpaceVH(height: 5.0),
            Text(
              plant.description,
              maxLines: 2,
            ),
            SpaceVH(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant.price,
                  style: headline2,
                ),
                SpaceVH(width: 20.0),
                Container(
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.3),
                        blurRadius: 10.0,
                        offset: Offset(1, 6),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.add,
                    size: 10.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
