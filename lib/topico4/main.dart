import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const ProgressBar());
}

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  String downloadMensage = "Clique Para iniciar o Upload";
  double _porcentagem = 100;
  var doubleValue = Random().nextDouble() * 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton.extended(
                onPressed: () {
                  setState(() {
                    downloadMensage = "${doubleValue.toStringAsFixed(1)}%";
                    
                    if (doubleValue < 100) {
                      doubleValue = doubleValue + doubleValue;
                    }

                    if (doubleValue >= 100) {
                      downloadMensage = "Upload Completo";
                    }
                    _porcentagem = doubleValue / 100;
                  });
                },
                label: const Text('Upload'),
                icon: const Icon(Icons.file_upload),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Text(downloadMensage),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: LinearProgressIndicator(
                  minHeight: 10.0,
                  backgroundColor: Colors.yellow,
                  
                  value: _porcentagem,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
