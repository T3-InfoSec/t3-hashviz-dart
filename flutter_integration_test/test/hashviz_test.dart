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