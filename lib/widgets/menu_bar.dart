import 'package:flutter/material.dart';
import 'package:uidesign04/core/color.dart';
import 'package:uidesign04/core/text_style.dart';
import 'package:uidesign04/data/menu.dart';
import 'package:uidesign04/widgets/clipper.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.0,
      color: green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < menuItems.length; i++)
            menuButton(
              text: menuItems[i].name,
              onTap: () {
                setState(() {
                  selectIndex = i;
                });
              },
              index: i,
            ),
        ],
      ),
    );
  }

  Widget menuButton({
    required String text,
    required int index,
    required Function() onTap,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: TextButton(
              onPressed: onTap,
              child: Text(
                text,
                style: buttonText,
              ),
            ),
          ),
        ),
        selectIndex == index
            ? RotatedBox(
                quarterTurns: 2,
                child: ClipPath(
                  clipper: CustomMenuClip(),
                  child: Container(
                    width: 35,
                    height: 110,
                    color: white,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: green,
                        radius: 3,
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox(
                width: 35,
                height: 110,
              ),
      ],
    );
  }
}
