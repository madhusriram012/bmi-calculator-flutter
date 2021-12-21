import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap,this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xffE6035C),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}