import 'package:flutter/material.dart';
import 'package:login/atoms/atom_container_with_height.dart';
import 'package:login/atoms/atom_textField.dart';

class ContainerTextFormFieldMolecule extends StatelessWidget {
  final height;
  final propertiesTextFormField;

  ContainerTextFormFieldMolecule(
      {Key key, this.height, this.propertiesTextFormField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerHeightAtom(
      child: TextFormFieldAtom(
        controller: this.propertiesTextFormField.controller,
        decoration: this.propertiesTextFormField.decoration,
        validator: this.propertiesTextFormField.validator,
        keyboardType: this.propertiesTextFormField.keyboardType,
        obscureText: this.propertiesTextFormField.obscureText,
        inputFormatters: this.propertiesTextFormField.inputFormatters,
      ),
      height: this.height,
    );
  }
}
