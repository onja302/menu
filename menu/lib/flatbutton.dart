import 'package:flutter/material.dart';

class BorderedFlatButton extends StatefulWidget {
  @override
  _BorderedFlatButtonState createState() => _BorderedFlatButtonState();
}

class _BorderedFlatButtonState extends State<BorderedFlatButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.white,
      onPressed: () {
        print(isSelected);
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Image.asset('assets/images/mail.png'),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: isSelected ? Colors.amber : Colors.transparent, width: 1),
      ),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    );
  }
}