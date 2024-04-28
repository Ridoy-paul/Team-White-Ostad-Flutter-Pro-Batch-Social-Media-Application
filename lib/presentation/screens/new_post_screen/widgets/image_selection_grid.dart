import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageData {
  final String imagePath;
  bool isSelected;

  ImageData(this.imagePath, {this.isSelected = false});
}

class ImageSelectionController extends GetxController {
  final RxList<ImageData> images = RxList<ImageData>([]);

  void addImage(String imagePath) {
    images.add(ImageData(imagePath));
  }

  void toggleSelection(int index) {
    images[index].isSelected = !images[index].isSelected;
    update(); // Update UI when selection changes
  }
}

class ImageSelectionGrid extends GetView<ImageSelectionController> {
  final Function(int index, bool isSelected) onSelectionChanged; // Callback

  const ImageSelectionGrid({
    Key? key,
    required this.onSelectionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImageSelectionController>(
      init: ImageSelectionController(),
      builder: (controller) => Container(
        height: MediaQuery.of(context).size.height*0.5, // Adjust height as needed for overflow
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: controller.images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Adjust columns as needed
          ),
          itemBuilder: (context, index) {
            final imageData = controller.images[index];
            return Stack(
              children: [
                SizedBox(
                  height: 150.0, // Adjust height as needed to limit image size
                  child: Image.asset(
                    "assets/images/nature_image2.jpg",
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
                Positioned(
                  bottom: 5.0,
                  right: 5.0,
                  child: Checkbox(
                    shape: CircleBorder(),
                    value: imageData.isSelected,
                    onChanged: (newValue) {
                      controller.toggleSelection(index);
                      onSelectionChanged(index, newValue!);
                    },
                  ),

                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
