import 'package:flutter/material.dart';
import 'package:rps_ui_e2/utils/constants.dart';

class SquareIconButton extends StatelessWidget {
  final Function() onPressed;
  final Color iconColor, buttonColor;
  final double width;
  final IconData icon;
  final double borderRadius;

  const SquareIconButton({Key? key, required this.onPressed, this.iconColor = COLOR_GREEN, this.buttonColor = Colors.white, this.width = 70, required this.icon, this.borderRadius = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: width,
        child: Icon(
          this.icon,
          color: iconColor,
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
