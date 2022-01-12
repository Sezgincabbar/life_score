import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class IconCinsiyet extends StatelessWidget {
  final String? cinsiyet;
  final IconData? icon;

  IconCinsiyet({required this.cinsiyet, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: FaIcon(
          icon,
          size: 50,
          color: Colors.black,
        )),
        Expanded(
          child: Text(cinsiyet.toString(), style: kMetin),
        ),
      ],
    );
  }
}
