import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color buttonColor;
  final TextStyle textStyle;
  final double buttonHeight;
  final double buttonWidth;
  final double radiusCircle;
  final List<BoxShadow> shadows;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.buttonColor,
    required this.textStyle,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.radiusCircle,
    required this.shadows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radiusCircle),
        boxShadow: shadows,
        color: buttonColor,
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            label,
            style:textStyle
          ),
        ),
      ),
    );
  }
}
