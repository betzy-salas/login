import 'package:dropdownfield/dropdownfield.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownFieldAtom extends StatefulWidget {
  final listValues;
  final hintText;
  final labelText;
  final itemsVisibleInDropdown;

  DropDownFieldAtom(
      {Key key,
      this.listValues,
      this.hintText,
      this.labelText,
      this.itemsVisibleInDropdown})
      : super(key: key);

  @override
  _DropDownFieldAtomState createState() => _DropDownFieldAtomState();
}

class _DropDownFieldAtomState extends State<DropDownFieldAtom> {
  final controllerDropDownField = TextEditingController();
  String controllerValue = "";
  String _myActivity;
  String _myActivityResult;

  @override
  Widget build(BuildContext context) => new DropDownFormField(
        titleText: 'My workout',
        hintText: 'Please choose one',
        value: _myActivity,
        onSaved: (value) {
          setState(() {
            _myActivity = value;
          });
        },
        onChanged: (value) {
          setState(() {
            _myActivity = value;
            print(_myActivity);
          });
        },
        dataSource: [
          {
            "display": "Running",
            "value": "Running",
          },
          {
            "display": "Climbing",
            "value": "Climbing",
          },
          {
            "display": "Walking",
            "value": "Walking",
          },
          {
            "display": "Swimming",
            "value": "Swimming",
          },
          {
            "display": "Soccer Practice",
            "value": "Soccer Practice",
          },
          {
            "display": "Baseball Practice",
            "value": "Baseball Practice",
          },
          {
            "display": "Football Practice",
            "value": "Football Practice",
          },
        ],
        textField: 'display',
        valueField: 'value',
      );
//}
  /*Widget build(BuildContext context) => new CupertinoPicker(
      itemExtent: 50,
      onSelectedItemChanged: (int index) {
        print(widget.listValues[index]);
      },
      children: widget.listValues);*/

  /*Widget build(BuildContext context) => new DropDownField(
        controller: controllerDropDownField,
        enabled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        items: widget.listValues,
        itemsVisibleInDropdown: widget.itemsVisibleInDropdown,
        onValueChanged: (value) {
          setState(() {
            controllerValue = value;
          });
        },
      );*/
}
