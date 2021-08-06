import 'package:flutter/material.dart';

class ColumAtom extends StatelessWidget {
  final children;
  final columnProperties;
  const ColumAtom({Key key, this.children, this.columnProperties})
      : super(key: key);

  @override
  Widget build(BuildContext context) => new Column(
        crossAxisAlignment: this.columnProperties.crossAxisAlignment,
        mainAxisSize: this.columnProperties.mainAxisSize,
        children: this.children,
      );
}
