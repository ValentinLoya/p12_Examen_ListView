import 'package:flutter/material.dart';

void main() {
  runApp(MiExamen());
}

class MiExamen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.directions_bike, 'text': 'bike'},
    {'icon': Icons.directions_boat, 'text': 'boat'},
    {'icon': Icons.directions_bus, 'text': 'bus'},
    {'icon': Icons.directions_car, 'text': 'car'},
    {'icon': Icons.directions_railway, 'text': 'railway'},
    {'icon': Icons.directions_run, 'text': 'run'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('ListViews Loya 1244', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(items[index]['icon'], color: Colors.grey),
              title: Text(items[index]['text']),
            ),
          );
        },
      ),
    );
  }
}
