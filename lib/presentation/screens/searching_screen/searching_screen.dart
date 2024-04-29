import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_white_social_media_app/presentation/screens/searching_screen/widgets/searching_all-image.dart';

class SearchingScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final List<String> imageUrls = [
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',
    'assets/images/nature_image2.jpg',
    'assets/images/NatureImaage.jpg',


    // Add more image URLs as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            // Text Form with validation using GetX
            Obx(
                  () => TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search",

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent[100]!, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor!, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  errorText: Get.find<SearchController>().searchError.value.isEmpty ? null : Get.find<SearchController>().searchError.value,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    Get.find<SearchController>().updateSearchError('Please enter a search term');
                    return ''; // Return empty string to prevent default Flutter error message
                  }
                  return null;
                },
              ),
            ),
            SearchingAllmage(imageUrls: imageUrls),

            // Additional widgets or search results display logic could go here
          ],
        ),
      ),
    );
  }
}



class SearchController extends GetxController {
  final RxString searchError = RxString('');

  void updateSearchError(String error) {
    searchError.value = error;
    update(); // Inform listeners about the change
  }
}


