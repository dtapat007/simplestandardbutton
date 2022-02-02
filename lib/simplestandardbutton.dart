library simplestandardbutton;

import 'package:flutter/material.dart';

class SimpleStandardButton extends StatelessWidget {
  const SimpleStandardButton(
      {Key? key,
      this.buttonColor = Colors.blue,
      this.borderColor = Colors.transparent,
      this.borderRadius = 4,
      this.text = '',
      this.textColor = Colors.white,
      this.textSize = 20,
      this.buttonHeight = 54,
      this.onTap,
      this.isLoading = false})
      : super(key: key);

  final Color buttonColor;
  final Color borderColor;
  final double borderRadius;
  final String text;
  final Color textColor;
  final double textSize;
  final double buttonHeight;
  final VoidCallback? onTap;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6.0,
      shadowColor: Colors.grey[50],
      borderRadius: BorderRadius.circular(4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: buttonHeight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: borderColor)),
          child: Center(
            child: isLoading!
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(
                    text,
                    style: TextStyle(
                        color: textColor,
                        fontSize: textSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'AzoSansBlack'),
                  ),
          ),
        ),
      ),
    );
  }
}
