import 'package:hashviz/hashviz.dart';
import 'package:test/test.dart';

void main() {
  group('Hashviz', () {
    final awesome = Hashviz();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.generatePattern("hash"), isTrue);
    });
  });
}