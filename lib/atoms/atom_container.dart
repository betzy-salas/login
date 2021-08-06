import 'package:flutter/material.dart';

class ContainerAtom extends StatelessWidget {
  final alignment;
  final child;

  ContainerAtom({Key key, this.alignment, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Container(
        alignment: this.alignment,
        child: this.child,
      );
}
