import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onTap;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: BOTTOM_CONTAINER_COLOR,
        height: BOTTOM_CONTAINER_HEIGHT,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: BUTTON_TEXT_STYLE,
          ),
        ),
      ),
    );
  }
}
