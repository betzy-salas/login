import 'package:flutter/material.dart';

class RowAtom extends StatelessWidget {
  final mainAxisAlignment;
  final children;

  RowAtom({Key key, this.mainAxisAlignment, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Row(
        mainAxisAlignment: this.mainAxisAlignment,
        children: this.children,
      );
}
