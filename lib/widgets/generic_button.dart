import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  final Function()? onTap;

  const CustomButton({super.key, this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.blue,
          width: 150,
          child: Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                buttonText ?? 'Default Text',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ));
  }
}
