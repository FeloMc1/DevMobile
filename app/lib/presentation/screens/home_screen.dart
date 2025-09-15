import 'package:flutter/material.dart';
import 'dart:io';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INFORMACION PERSONAL"),
        actions: [
          IconButton(
            icon: const Icon(Icons.flash_on),
            onPressed: () {
              // Sale de la aplicación
              exit(0);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.network(
                      "https://via.placeholder.com/150",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("FELIPE MEZA BRANGO",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("BARISTA"),
                      Text("3024288188"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: "GITHUB",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "LINKEDIN",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alternate_email),
            label: "TWITTER",
          ),
        ],
      ),
    );
  }
}
