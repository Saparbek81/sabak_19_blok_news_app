import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('News App'))),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, indext) {
          return ListTile(
            leading: Text('$indext'),
            title: FlutterLogo(
              size: 50,
            ),
            subtitle: Text('Hello'),
            trailing: Icon(Icons.delete),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
