import 'package:flutter/material.dart';
import 'package:login/atoms/atom_container.dart';
import 'package:login/atoms/atom_row.dart';

class ContainerRowMolecule extends StatelessWidget {
  final alignment;
  final mainAxisAlignment;
  final children;
  ContainerRowMolecule(
      {Key key, this.alignment, this.mainAxisAlignment, this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerAtom(
        alignment: this.alignment,
        child: RowAtom(
            mainAxisAlignment: this.mainAxisAlignment,
            children: this.children));
  }
}
