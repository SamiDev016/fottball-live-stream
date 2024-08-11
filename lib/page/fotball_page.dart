import 'package:flutter/material.dart';
import 'package:football_app/data/api_manager.dart';
import 'package:football_app/page/pages_body.dart';

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
      body: FutureBuilder(
        future: FottballApi().getAllMatches(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return PageBody(snapshot.data!);
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}