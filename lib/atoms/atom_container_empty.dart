import 'package:flutter/material.dart';

class ContainerEmptyAtom extends StatelessWidget {
  final child;

  ContainerEmptyAtom({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Container(
        child: this.child,
      );
}
