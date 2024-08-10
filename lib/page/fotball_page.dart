import 'package:flutter/material.dart';

class FotballPage extends StatefulWidget {
  const FotballPage({super.key});

  @override
  State<FotballPage> createState() => _FotballPageState();
}

class _FotballPageState extends State<FotballPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0.0,
        title: const Text(
          "Football Live",
          style: TextStyle(
            //color: Colors.white,
            fontWeight: FontWeight.bold,
            
          ),
          
        ),
        centerTitle: true,
      ),
    );
  }
}