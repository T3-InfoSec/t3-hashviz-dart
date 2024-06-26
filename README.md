# t3-hashviz-dart

A Dart package for generating hash visualization (commonly referred to as Identicons) based on provided hash. It is one of the Greatwall TKBA protocol implementations. It returns different types of visualization for given hashes.
This visualization generation relies on [Blockies](https://pub.dev/packages/blockies)

## Features

- Generate hash visualization (commonly referred to as Identicons) based on hash.
- Customize the size, color, background color, and spotColor.
  

## Getting started

To start using Hashviz, add it to your `pubspec.yaml`:
```yaml
dependencies:
    hashviz: ^1.0.0
```
Then, run `flutter pub get` to install the package.

### Running tests
#### Unit test
Unit tests have to be executed using the flutter framework since Blockies extends a flutter component. Therefore the command 'flutter test' is used.
```bash
flutter test
```
#### Example
In order to visualize the behavior of the module, an example with flutter has been developed. To run these test, the following commands must be executed:
```bash
cd example
code .
flutter run
```

## Usage

Example code on how to use Hashviz to generate hash visualization (commonly referred to as Identicons) pattern.
```dart
import 'package:hashviz/hashviz.dart';

void main() {
  // Create a Hashviz instance
  Hashviz hashviz = Hashviz();

  // Generate pattern based on a hash string
  String hash = 'your_hash_string';
  Blockies pattern = hashviz.generatePattern(hash);
}
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.