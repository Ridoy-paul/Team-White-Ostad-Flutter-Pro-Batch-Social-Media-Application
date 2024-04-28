import 'package:flutter/material.dart';

class SelectFromCamera extends StatelessWidget {
  const SelectFromCamera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(


      child: Column(
        children: [
          IconButton(
            onPressed: () {
              // Handle camera button action
            },
            icon: Icon(Icons.camera_alt_outlined, color: Colors.black, size: 60),
          ),
          Text(
            'Camera',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
      onTap: (){

      },
    );
  }
}