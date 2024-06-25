import 'dart:ui';

import 'package:blockies/blockies.dart';

/// Hashviz generates hash visualizations with specified size and colors.
class Hashviz {
  int _size;
  int? _backgroundColor;
  int? _color;
  int? _spotColor;

  /// Constructor for the [Hashviz] class.
  ///
  /// - Parameters:
  ///   - [size]: The size of the blocks in the visualization. Must be a positive integer.
  ///   - [backgroundColor]: An integer representing the background color in hexadecimal (0x00000000 to 0xFFFFFFFF).
  ///   - [color]: An integer representing the main color in hexadecimal (0x00000000 to 0xFFFFFFFF).
  ///   - [spotColor]: An integer representing the spot color in hexadecimal (0x00000000 to 0xFFFFFFFF).
  ///   These color values are in ARGB format, where:
  ///     - The first two characters represent the opacity (Alpha). 0x00000000 is transparent, not black
  ///     - The next two characters represent the red value (R).
  ///     - The following two characters represent the green value (G).
  ///     - The last two characters represent the blue value (B).
  ///
  /// - Throws:
  ///   - [ArgumentError] if any of the color values are outside the range 0x00000000 to 0xFFFFFFFF.
  ///   - [ArgumentError] if the size is not a positive integer.
  Hashviz({
    required int size,
    int? backgroundColor,
    int? color,
    int? spotColor,
  })  : _size = _IsPositive(size) ? size : throw ArgumentError("Size must be a positive integer."),
        _backgroundColor = _isValidColor(backgroundColor) ? backgroundColor : throw ArgumentError("If present, background color must be between 0x00000000 and 0xFFFFFFFF."),
        _color = _isValidColor(color) ? color : throw ArgumentError("If present, color must be between 0x00000000 and 0xFFFFFFFF."),
        _spotColor = _isValidColor(spotColor) ? spotColor : throw ArgumentError("If present, spot color must be between 0x00000000 and 0xFFFFFFFF.");

  /// Generates a pattern based on the given hash string.
  ///
  /// The [generatePattern] method creates a Blockies pattern using the provided
  /// hash string and the instance's size and color properties.
  ///
  /// - Parameters:
  ///   - [hash]: A string used as the seed to generate the pattern.
  ///
  /// - Returns: A [Blockies](https://pub.dev/packages/blockies) object containing
  ///   the generated pattern with the specified seed, size, color, background color,
  ///   and spot color.
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
    _backgroundColor = _isValidColor(value)
        ? value
        : throw ArgumentError(
            "If present, background color must be between 0x00000000 and 0xFFFFFFFF.");
  }

  int? get color => _color;
  set color(int? value) {
    _color = _isValidColor(value)
        ? value
        : throw ArgumentError(
            "If present, color must be between 0x00000000 and 0xFFFFFFFF.");
  }

  int get size => _size;

  int? get spotColor => _spotColor;
  set spotColor(int? value) {
    _spotColor = _isValidColor(value)
        ? value
        : throw ArgumentError(
            "If present, spot color must be between 0x00000000 and 0xFFFFFFFF.");
  }

  static bool _isValidColor(int? value) {
    return (value == null || (value >= 0x00000000 && value <= 0xFFFFFFFF));
  }

  static bool _IsPositive(int value) {
    return value > 0;
  }
}
