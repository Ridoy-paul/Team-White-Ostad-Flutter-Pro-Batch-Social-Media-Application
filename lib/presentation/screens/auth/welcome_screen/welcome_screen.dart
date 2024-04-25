import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "Social Live",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Center(child: Image.asset("assets/images/img.png")),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add"),
            ),
            TextFormField(),
            Text(
              "titleLarge",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.secondary,fontFamily: "Inter"),
            ),
            Text(
              "titleMidium",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.secondary,fontFamily: "Inter"),
            ),
            Text(
              "Title Small",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Social Live",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.secondary,fontFamily: "satoshi",fontWeight: FontWeight.bold),
            ),
            Center(
              child: Image.asset("assets/png_icons/Camera.png"),
            ),
            const Icon(
              Icons.search,
              size: 24,
            ),
            const Icon(
              Icons.search,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "add"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "profile"),
        ],
      ),
    );
  }

}
