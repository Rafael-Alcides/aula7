import 'package:flutter/material.dart';
import 'package:topicos/topico2/theme.dart';

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
        theme: ThemeAppBar.ligth,
        home: const Appbar());
  }
}

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.pink[50],
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.flash_on,
              size: 32, color: Colors.blue,),
              title: Text("Flutter"),
              subtitle: Text("Tudo são widget"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.mood,
              size: 32, color: Colors.red,),
              title: Text("Dart"),
              subtitle: Text("É muito Forte"),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.local_cafe,
              size: 32, color: Colors.brown,),
              title: Text("Cafessineo"),
              subtitle: Text("Quero cafeé!"),
              trailing: Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
      appBar: AppBar(
        
        titleTextStyle: TextStyle(color: Colors.pink[100]),
        title:const Text(
          "Meu Drawer",
          style: TextStyle(
            fontSize: 32.0,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.pink[100], size: 40),
      ),
    );
  }
}
