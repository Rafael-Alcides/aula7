import 'package:flutter/material.dart';

void main() => runApp(const BottonNavigation());

class BottonNavigation extends StatefulWidget {
  const BottonNavigation({Key? key}) : super(key: key);

  @override
  State<BottonNavigation> createState() => _BottonNavigationState();
}

class _BottonNavigationState extends State<BottonNavigation> {
  int currentIndex = 0;

  void onItemPressed(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("botton navigation"),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[300],
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onItemPressed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home", tooltip: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                tooltip: "Configuracões"),
            BottomNavigationBarItem(
                icon: Icon(Icons.login), label: "Login", tooltip: "Entrar")
          ],
        ),
      ),
    );
  }
}
