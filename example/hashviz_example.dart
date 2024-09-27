import 'package:hashviz/hashviz.dart';

void main() {
  // Create an instance of Hashviz
  final hashviz = Hashviz(
    hash: "example_hash_string",
    size: 16
  );

  // Generate the image data
  final imageData = hashviz.visualizationBlocks;

  // Print the generated data
  print('Image Data:');
  print(imageData);
}
