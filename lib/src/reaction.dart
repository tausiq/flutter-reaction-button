import 'package:flutter/material.dart';

class Reaction {
  /// Widget showing as button after selecting preview Icon from box appear.
  final Widget child;

  Reaction({@required this.child}) {
    assert(child != null);
  }

  bool equals(Reaction object) {
    if (object == null) return false;
    return hashCode == object.hashCode;
  }
}
