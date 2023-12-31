import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 0.0,
        // backgroundColor: Colors.white,
        // iconTheme: IconThemeData(color: Colors.teal),
        // centerTitle: true,
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
