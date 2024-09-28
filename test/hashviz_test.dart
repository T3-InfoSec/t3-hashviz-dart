import 'package:t3_hashviz/hashviz.dart';
import 'package:test/test.dart';

void main() {
  group('Hashviz Tests', () {
    test('Constructor should throw ArgumentError for non-positive size', () {
      Hashviz valid_hashviz_size =
          Hashviz(hashToVisualize: 'test', visualizationSize: 1);
      Hashviz invalid_hashviz_size =
          Hashviz(hashToVisualize: 'test', visualizationSize: 0);
      Hashviz invalid_hashviz_size_negative =
          Hashviz(hashToVisualize: 'test', visualizationSize: -1);

      expect(valid_hashviz_size.visualizationSize, 1);
      expect(invalid_hashviz_size.visualizationSize, 1);
      expect(invalid_hashviz_size_negative.visualizationSize, 1);
    });

    test('Generate pattern data should produce non-empty list', () {
      final hashviz =
          Hashviz(hashToVisualize: 'test_hash', visualizationSize: 16);
      final imageData = hashviz.visualizationBlocks;

      expect(imageData, isNotEmpty);
      expect(imageData, hasLength(16 * 16)); // For size 16, expect 256 values
    });
  });
}
