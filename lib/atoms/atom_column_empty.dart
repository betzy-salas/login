import 'package:flutter/material.dart';

class ColumnEmptyAtom extends StatelessWidget {
  final children;
  const ColumnEmptyAtom({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Column(
        children: this.children,
      );
}
