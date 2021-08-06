import 'package:flutter/material.dart';
import 'package:login/atoms/atom_container_with_height.dart';
import 'package:login/atoms/atom_drop_down.dart';

class ContainerDropDrownMolecule extends StatelessWidget {
  final height;
  final listValues;
  final hintText;
  final labelText;
  final itemsVisibleInDropdown;

  ContainerDropDrownMolecule(
      {Key key,
      this.height,
      this.listValues,
      this.hintText,
      this.labelText,
      this.itemsVisibleInDropdown})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerHeightAtom(
      child: DropDownFieldAtom(
        listValues: this.listValues,
        hintText: this.hintText,
        labelText: this.labelText,
        itemsVisibleInDropdown: this.itemsVisibleInDropdown,
      ),
      height: this.height,
    );
  }

  /*Widget build(BuildContext context) {
    return ContainerHeightAtom(
      child: DropDownFieldAtom(
        listValues: this.listValues,
        hintText: this.hintText,
        labelText: this.labelText,
        itemsVisibleInDropdown: this.itemsVisibleInDropdown,
      ),
      height: this.height,
    );
  }*/
}
