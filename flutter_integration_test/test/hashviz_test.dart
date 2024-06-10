import 'package:hashviz/hashviz.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

void main() {
  group('Hashviz tests', () {
    test('Constructor without parameters', () {
      final hashviz = Hashviz(size: 8);
      expect(hashviz.size, 8);
      expect(hashviz.backgroundColor, isNull);
      expect(hashviz.color, isNull);
      expect(hashviz.spotColor, isNull);
    });

    test('Constructor with all parameters', () {
      final hashviz = Hashviz(
        size: 8,
        backgroundColor: 0xFFFFFFFF,
        color: 0xFF000000,
        spotColor: 0xFF00FFFF,
      );
      expect(hashviz.size, 8);
      expect(hashviz.backgroundColor, 0xFFFFFFFF);
      expect(hashviz.color, 0xFF000000);
      expect(hashviz.spotColor, 0xFF00FFFF);
    });

    test('Constructor throws ArgumentError when invalid size', () {
      expect(
        () => Hashviz(size: -5),
        throwsArgumentError,
      );
    });

    test('Constructor throws ArgumentError when invalid background color', () {
      expect(
        () => Hashviz(size: 8, backgroundColor: 0x100000000),
        throwsArgumentError,
      );
    });

    test('Constructor throws ArgumentError when invalid color', () {
      expect(
        () => Hashviz(size: 8, color: 0x100000000),
        throwsArgumentError,
      );
    });

    test('Constructor throws ArgumentError when invalid spot color', () {
      expect(
        () => Hashviz(size: 8, spotColor: 0x100000000),
        throwsArgumentError,
      );
    });

    test('generatePattern method from hashviz with required attributes', () {
      final hashviz = Hashviz(size: 8);

      final blockies = hashviz.generatePattern('example_hash');

      expect(blockies.seed, 'example_hash');
      expect(blockies.size, 8);
      expect(blockies.color, isNull);
      expect(blockies.bgColor, isNull);
      expect(blockies.spotColor, isNull);
    });

    test('generatePattern method from hashviz with optional attributes', () {
      final hashviz = Hashviz(
        size: 8,
        backgroundColor: 0xFFFFFFFF,
        color: 0xFF000000,
        spotColor: 0xFF00FFFF,
      );

      final blockies = hashviz.generatePattern('example_hash');

      expect(blockies.seed, 'example_hash');
      expect(blockies.size, 8);
      expect(blockies.color, Color(0xFF000000));
      expect(blockies.bgColor, Color(0xFFFFFFFF));
      expect(blockies.spotColor, Color(0xFF00FFFF));
    });

    test('Getter and setters when no errors', () {
      final hashviz = Hashviz(size: 10);
      hashviz.backgroundColor = 0xFF000000;
      hashviz.color = 0xFFFFFFFF;
      hashviz.spotColor = 0xFF00FFFF;
      expect(hashviz.size, 10);
      expect(hashviz.backgroundColor, 0xFF000000);
      expect(hashviz.color, 0xFFFFFFFF);
      expect(hashviz.spotColor, 0xFF00FFFF);
    });

    test('Setter for backgroundColor throws ArgumentError when invalid color', () {
      final hashviz = Hashviz(size: 8);
      expect(
        () => hashviz.backgroundColor = 0x100000000, // Invalid color
        throwsArgumentError,
      );
    });

    test('Setter for color throws ArgumentError when invalid color', () {
      final hashviz = Hashviz(size: 8);
      expect(
        () => hashviz.color = 0x100000000, // Invalid color
        throwsArgumentError,
      );
    });

    test('Setter for spot color throws ArgumentError when invalid color', () {
      final hashviz = Hashviz(size: 8);
      expect(
        () => hashviz.spotColor = 0x100000000, // Invalid color
        throwsArgumentError,
      );
    });
  });
}
