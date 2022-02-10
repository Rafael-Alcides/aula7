import 'package:flutter/material.dart';
import 'package:topicos/topico1/themeMeuDrawer.dart';

void main() {
  runApp(const MyAppBar());
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Meu Drawer",
        debugShowCheckedModeBanner: false,
        theme: ThemeDrawer.ligth,
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.light,
        home: const Appbar());
  }
}

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          titleTextStyle:const TextStyle(color: Colors.brown),
      title: const Text("Coffer", 
        style: TextStyle(fontSize: 40.0,
        fontWeight: FontWeight.bold ),
      ),
      leading: const Icon(
        Icons.coffee,
        size: 32.0,
      ),
      iconTheme:const IconThemeData(color: Colors.brown)
    )
    );
  }
}
