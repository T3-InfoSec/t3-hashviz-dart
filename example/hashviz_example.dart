import 'package:hashviz/hashviz.dart';

void main() {
  // Create an instance of Hashviz
  final hashviz = Hashviz(size: 16);

  // Define a test hash
  final hash = 'example_hash_string';

  // Generate the image data
  final imageData = hashviz.generatePatternData(hash);

  // Print the generated data
  print('Image Data:');
  print(imageData);
}
