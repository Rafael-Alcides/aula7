import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppBar());
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Appbar()
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:
        Drawer(
          backgroundColor: Colors.pink[100],
          child: ListView(
            children: const [

            ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.pink, 
        title: Text("Meu Drawer",
        style: TextStyle(
          fontSize: 32.0,
          color: Colors.pink[100],
        ),
        ),
        iconTheme: IconThemeData(color: Colors.pink[100]),
      ), 
      
    );
  }
}
