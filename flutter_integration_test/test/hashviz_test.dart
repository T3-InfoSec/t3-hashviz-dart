import 'package:hashviz/hashviz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

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

    test('Constructor with invalid size', () {
      expect(
        () => Hashviz(size: -1),
        throwsA(predicate((e) => e is AssertionError && e.message == 'Size must be a positive integer.')),
      );
    });

    test('Constructor with invalid backgroundColor', () {
      expect(
        () => Hashviz(size: 8, backgroundColor: 0x1FFFFFFFF),
        throwsA(predicate((e) => e is AssertionError && e.message == 'if present, background color must be between 0x00000000 and 0xFFFFFFFF.')),
      );
    });

    test('Constructor with invalid color', () {
      expect(
        () => Hashviz(size: 8, color: 0x1FFFFFFFF),
        throwsA(predicate((e) => e is AssertionError && e.message == 'if present, color must be between 0x00000000 and 0xFFFFFFFF.')),
      );
    });

    test('Constructor with invalid spotColor', () {
      expect(
        () => Hashviz(size: 8, spotColor: 0x1FFFFFFFF),
        throwsA(predicate((e) => e is AssertionError && e.message == 'if present, spot color must be between 0x00000000 and 0xFFFFFFFF.')),
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

    test('Getters and setters', () {
      final hashviz = Hashviz(size: 8);

      // Test size
      hashviz.size = 10;
      expect(hashviz.size, 10);

      // Test backgroundColor
      hashviz.backgroundColor = 0xFF00FF00;
      expect(hashviz.backgroundColor, 0xFF00FF00);

      // Test color
      hashviz.color = 0xFFFF0000;
      expect(hashviz.color, 0xFFFF0000);

      // Test spotColor
      hashviz.spotColor = 0xFFFFFF00;
      expect(hashviz.spotColor, 0xFFFFFF00);
    });
  });
}