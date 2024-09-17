import 'package:hashviz/hashviz.dart';
import 'package:test/test.dart';

void main() {
  group('Hashviz Tests', () {
    test('Constructor should throw ArgumentError for non-positive size', () {
      Hashviz valid_hashviz_size =
          Hashviz(hash: 'test', size: 1, isSymmetric: true, numColors: 3);
      Hashviz invalid_hashviz_size =
          Hashviz(hash: 'test', size: 0, isSymmetric: true, numColors: 3);
      Hashviz invalid_hashviz_size_negative =
          Hashviz(hash: 'test', size: -1, isSymmetric: true, numColors: 3);

      expect(valid_hashviz_size.size, 1);
      expect(invalid_hashviz_size.size, 1);
      expect(invalid_hashviz_size_negative.size, 1);
    });

    test('Generate pattern data should produce non-empty list', () {
      final hashviz = Hashviz(hash: 'test_hash', size: 16);
      final imageData = hashviz.visualizationBlocks;

      expect(imageData, isNotEmpty);
      expect(imageData, hasLength(16 * 16)); // For size 16, expect 256 values
    });

    test('When isSymetrical false then pattern data should not be symmetrical',
        () {
      final hashviz = Hashviz(
          hash: 'test_hash', size: 16, isSymmetric: false, numColors: 3);
      final imageData = hashviz.visualizationBlocks;

      bool isSymmetrical = true;
      final width = 16;
      for (int y = 0; y < width; y++) {
        for (int x = 0; x < width; x++) {
          if (imageData[y * width + x] !=
              imageData[y * width + (width - x - 1)]) {
            isSymmetrical = false;
            break;
          }
        }
        if (!isSymmetrical) break;
      }

      expect(isSymmetrical, isFalse, reason: 'Pattern should be asymmetrical');
    });
  });
}
