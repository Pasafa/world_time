import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator. pushNamed(context, '/location');
                // Your onPressed code here
              },
              icon: const Icon(Icons.edit_location), // const added for optimization
              label: const Text('Edit Locations'), // const added for optimization
            ),
          ],
        ),
      ),
    );
  }
}
