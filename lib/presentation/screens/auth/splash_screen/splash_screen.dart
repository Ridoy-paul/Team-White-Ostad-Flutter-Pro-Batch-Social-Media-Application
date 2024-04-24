import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Social Live",
              style: TextStyle(fontFamily: "Lobster", fontSize: 50),
            ),
            Center(child: Image.asset("assets/images/img.png")),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add"),
            ),
            TextFormField(),
             Text(
              "Social Live",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.secondary,fontFamily: "Inter"),
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
