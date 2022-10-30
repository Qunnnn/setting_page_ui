import 'package:flutter/material.dart';

class buildOption extends StatelessWidget {
  final dynamic onFress;
  final dynamic icon;
  final dynamic label;
  final dynamic Width;
  buildOption({this.onFress, required this.icon, this.Width, this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFress,
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            ImageIcon(AssetImage(icon)),
            SizedBox(
              width: 15.0,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: Width,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
    ;
  }
}
