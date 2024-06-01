import 'dart:ui';
import 'package:blockies/blockies.dart';

class Hashviz {
  int _size;
  int? _backgroundColor;
  int? _color;
  int? _spotColor;

  Hashviz({
    required int size,
    int? backgroundColor,
    int? color,
    int? spotColor,
  })  : _size = size,
        _backgroundColor = backgroundColor,
        _color = color,
        _spotColor = spotColor;

  Blockies generatePattern(String hash) {
    return Blockies(
      seed: hash,
      size: _size,
      color: _color != null ? Color(_color!) : null,
      bgColor: _backgroundColor != null ? Color(_backgroundColor!) : null,
      spotColor: _spotColor != null ? Color(_spotColor!) : null,
    );
  }

  // Getters and setters

  int? get backgroundColor => _backgroundColor;
  set backgroundColor(int? value) {
    _backgroundColor = value;
  }

  int? get color => _color;
  set color(int? value) {
    _color = value;
  }

  int get size => _size;
  set size(int value) {
    _size = value;
  }

  int? get spotColor => _spotColor;
  set spotColor(int? value) {
    _spotColor = value;
  }
}