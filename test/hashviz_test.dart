import 'package:hashviz/hashviz.dart';
import 'package:test/test.dart';

void main() {
  group('Hashviz', () {
    final hashviz = Hashviz();

    setUp(() {

    });

    test('First Test', () {
      expect(hashviz.generatePattern("hash"), isTrue);
    });
  });
}