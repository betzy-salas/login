import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/atoms/atom_elevatedButton.dart';
import 'package:login/atoms/atom_text.dart';
import 'package:login/constants/constants_color.dart';
import 'package:login/constants/constants_number.dart';
import 'package:login/constants/constants_text.dart';
import 'package:login/molecules/molecule_containerColumnEmpty.dart';

class ButtonTemplate extends StatelessWidget {
  final textButton;
  final onPressed;
  final radious;

  ButtonTemplate({Key key, this.textButton, this.onPressed, this.radious})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerColumnEmptyMolecule(
      children: _listChildren(context, this.textButton, this.onPressed),
    );
  }

  List<Widget> _listChildren(
      BuildContext context, String textButton, final onPressed) {
    List<Widget> _listChildren = [];
    _listChildren.add(ElevatedButtonAtom(
        child: SimpleTextAtom(
            text: textButton,
            align: TextAlign.center,
            size: SIZE_BOLD_TEXT,
            weight: FontWeight.normal,
            family: TEXT_FONT_FAMILY,
            style: FontStyle.normal,
            colors: colorSimpleTextwhite),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radious),
          ),
        )));
    return _listChildren;
  }
}
