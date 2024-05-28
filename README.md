# t3-hashviz-dart

A Dart package for generating hash visualization (commonly referred to as Identicons) based on provided hash strings.

It is one of the Greatwall TKBA protocol implementations. It returns different types of identicons for given hashes

## Features

- Generate hash visualization (commonly referred to as Identicons) based on hash.
- Generate images from hash.
- Customize the size, background color, foreground color and grid size of the patterns or images.
  

## Getting started

To start using Hashviz, add it to your `pubspec.yaml`:
```yaml
dependencies:
    hashviz: ^1.0.0
```
Then, run `dart pub get` to install the package.

### Running tests
To run the tests for Hashviz, use the following command in the root directory:
```bash
dart test test/hashviz_test.dart
```
or simply:
```bash
dart test
```
## Usage

Example code on how to use Hashviz to generate hash visualization (commonly referred to as Identicons) pattern.
```dart
import 'package:hashviz/hashviz.dart';

void main() {
  // Create a Hashviz instance
  Hashviz hashviz = Hashviz();

  // Generate an unique symmetric pattern based on a hash string
  String hash = 'your_hash_string';
  img.Image pattern = hashviz.generatePattern(hash);
}
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.