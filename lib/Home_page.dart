import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign04/core/color.dart';
import 'package:uidesign04/core/text_style.dart';
import 'package:uidesign04/data/plants.dart';
import 'package:uidesign04/widgets/custom_app_bar.dart';
import 'package:uidesign04/widgets/item_card.dart';
import 'package:uidesign04/widgets/menu_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                MenuBar(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, left: 35.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Green'),
                        Text(
                          'Plants',
                          style: headline1,
                        ),
                        Expanded(
                          child: Scrollbar(
                            thickness: 4,
                            child: ListView.builder(
                              itemCount: plants.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (itemBuilder, index) {
                                final plant = plants[index];
                                return PlantItemCard(
                                  plant: plant,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CustomAppBar(),
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: () {},
                child: SvgPicture.asset(
                  'assets/icon/home.svg',
                  height: 25.0,
                  color: white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
