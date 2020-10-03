import 'package:flutter/material.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'package:rps_ui_e1/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({Key key, @required this.text, @required this.icon, @required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
          color: COLOR_DARK_BLUE,
          splashColor: Colors.white.withAlpha(55),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: COLOR_WHITE,
              ),
              addHorizontalSpace(10),
              Text(
                text,
                style: TextStyle(color: COLOR_WHITE),
              )
            ],
          )),
    );
  }
}
