# t3-hashviz-dart
A Dart package for generating hash visualizations (commonly referred to as Identicons) based on a provided hash. It is one of the Greatwall TKBA protocol implementations. This package generates the data for the visualization and delegates the final rendering with colors to the client.

## Features
- Generate hash visualizations (commonly referred to as Identicons) based on a hash.
- Customize the size of the blocks in the visualization.

## Getting started
To start using Hashviz, add it to your `pubspec.yaml`:
```yaml
dependencies:
  hashviz: ^1.0.0
```

Then, run `dart pub get` to install the package.

## Running tests
Unit tests can be executed using the Dart. Run the following command:
```bash
dart test
```
## Example
To visualize the behavior of the module, an example has been developed. To run it, execute the following commands:
```bash
cd example
dart hashviz_example.dart
```

## Usage
Example code on how to use Hashviz to generate hash visualizations (commonly referred to as Identicons) pattern:

```dart
import 'package:hashviz/hashviz.dart';

void main() {
  // Create a Hashviz instance
  Hashviz hashviz = Hashviz(size: 8); // Initialize with the desired size

  // Generate pattern data based on a hash string
  String hash = 'your_hash_string';
  List<int> patternData = hashviz.generatePatternData(hash);

  // Render the pattern data with colors in your Flutter app
}
```

## Additional information
TODO: Tell users more about the package: where to find more information, how to contribute to the package, how to file issues, what response they can expect from the package authors, and more.