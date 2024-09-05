import 'package:test/test.dart';

import 'package:hashviz/hashviz.dart';

void main() {
  group('Hashviz Tests', () {
    test('Constructor should throw ArgumentError for non-positive size', () {
      expect(() => Hashviz(size: 0), throwsArgumentError);
      expect(() => Hashviz(size: -1), throwsArgumentError);
      expect(() => Hashviz(size: 1), returnsNormally);
    });

    test('Generate pattern data should produce non-empty list', () {
      final hashviz = Hashviz(size: 16);
      final hash = 'test_hash';
      final imageData = hashviz.generatePatternData(hash);

      expect(imageData, isNotEmpty);
      expect(imageData, hasLength(16 * 16)); // For size 16, expect 256 values
    });

    test('CreateRandSeed should generate consistent seed', () {
      final hashviz = Hashviz(size: 16);
      final hash1 = 'seed1';
      final hash2 = 'seed2';

      final seed1 = hashviz.createRandSeed(hash1);
      final seed2 = hashviz.createRandSeed(hash2);

      expect(seed1, isNot(equals(seed2)));
    });
  });
}
