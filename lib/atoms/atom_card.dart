import 'package:flutter/material.dart';

class CardAtom extends StatelessWidget {
  final child;
  final cardProperties;
  final shapeProperties;

  const CardAtom(
      {Key key, this.child, this.cardProperties, this.shapeProperties})
      : super(key: key);

  @override
  Widget build(BuildContext context) => new Card(
        semanticContainer: this.cardProperties.semanticContainer,
        clipBehavior: this.cardProperties.clipBehavior,
        child: child,
        shape: shapeProperties,
        elevation: this.cardProperties.elevation,
        margin: this.cardProperties.margin,
      );
}
