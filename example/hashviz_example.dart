import 'package:t3_hashviz/hashviz.dart';

void main() {
  // Create an instance of Hashviz
  final hashviz =
      Hashviz(hashToVisualize: 'example_to_hash', visualizationSize: 16);

  // Generate the image data
  final imageData = hashviz.visualizationBlocks;

  // Print the generated data
  print('Image Data:');
  print(imageData);
}
