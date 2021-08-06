import 'package:flutter/material.dart';

class ContainerHeightAtom extends StatelessWidget {
  final child;
  final height;

  ContainerHeightAtom({Key key, this.child, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.height != null) {
      return Container(
        height: this.height,
        child: this.child,
      );
    } else {
      return Container(
        child: this.child,
      );
    }
  }
}
