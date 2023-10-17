import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class MenuRow extends StatelessWidget {
  final String title;
  final String icon;
  final Color? color;
  final Color txtcolor;
  final bool showleftIcon;
  final VoidCallback onPressed;
  MenuRow({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.color,
    Color? txtcolor,
    this.showleftIcon = true,
  }) : txtcolor = txtcolor ?? TColor.text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            Image.asset(
              icon,
              color: color,
              width: 25,
              height: 25,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: txtcolor, fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            if (showleftIcon)
              const SizedBox(
                width: 8,
              ),
            if (showleftIcon)
              Icon(
                Icons.navigate_next_outlined,
                color: TColor.gray,
                size: 25,
              )
          ],
        ),
      ),
    );
  }
}
